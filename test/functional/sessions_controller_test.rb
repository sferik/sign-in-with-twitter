require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test 'should save access token and secret in session on OAuth callback' do
    result = {}
    result['omniauth.auth'] = {}
    result['omniauth.auth']['credentials'] = {}
    result['omniauth.auth']['credentials']['token'] = 'abc'
    result['omniauth.auth']['credentials']['secret'] = '123'
    request.stubs env: result
    get :create
    assert_equal 'abc', session[:access_token]
    assert_equal '123', session[:access_token_secret]
    assert_equal 'Signed in', flash[:notice]
    assert_redirected_to show_path
  end

  test 'should display profile when authenticated' do
    session[:access_token] = 'abc'
    session[:access_token_secret] = '123'
    stub_request(:get, 'https://api.twitter.com/1.1/account/verify_credentials.json').
      with(query: {include_entities: 'true'}).
      to_return(body: File.read(File.expand_path('../../fixtures/user.json', __FILE__)))
    stub_request(:get, 'https://api.twitter.com/1.1/users/show.json').
      with(query: {screen_name: 'sferik'}).
      to_return(body: File.read(File.expand_path('../../fixtures/user.json', __FILE__)))
    get :show
    assert_not_nil assigns :user
    assert_response :success
    assert_select 'title', 'Sign in with Twitter'
    assert_select 'form' do
      assert_select '[action=?]', '/signout'
      assert_select '[method=?]', 'post'
    end
    assert_select 'input[name="_method"]' do
      assert_select '[type=?]', 'hidden'
      assert_select '[value=?]', 'delete'
    end
    assert_select 'button', 'Sign out'
  end

  test 'should redirect to failure path when unauthenticated' do
    get :show
    assert_redirected_to failure_path
  end

  test 'should display error on failure' do
    get :error
    assert_equal 'Sign in with Twitter failed', flash[:error]
    assert_redirected_to root_path
  end

  test 'should empty session on sign out' do
    get :destroy
    assert_equal ['flash'], session.keys
    assert_equal 'Signed out', flash[:notice]
    assert_redirected_to root_path
  end
end
