require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test 'should set session on OAuth callback' do
    result = {}
    result['omniauth.auth'] = {}
    result['omniauth.auth']['user_info'] = user
    request.stubs(env: result)
    get :create, oauth_token: 'abc', oauth_verifier: '123'
    assert_not_nil session['user_info']
    assert_equal 'Signed in with Twitter!', flash[:notice]
    assert_redirected_to show_path
  end

  test 'should display profile if session is set' do
    session['user_info'] = user
    get :show
    assert_not_nil assigns(:user)
    assert_response :success
    assert_select 'title', 'Sign in with Twitter'
    assert_select 'dt', count: user.size
    assert_select 'dd', count: user.size
    assert_select 'form' do
      assert_select '[action=?]', '/signout'
      assert_select '[method=?]', 'post'
    end
    assert_select 'input[name="_method"]' do
      assert_select '[type=?]', 'hidden'
      assert_select '[value=?]', 'delete'
    end
    assert_select 'input[name="commit"]' do
      assert_select '[type=?]', 'submit'
      assert_select '[value=?]', 'Sign out'
    end
  end

  test 'should redirect to failure path if session is blank' do
    get :show
    assert_redirected_to failure_path
  end

  test 'should display error on failure' do
    get :error
    assert_equal 'Sign in with Twitter failed!', flash[:error]
    assert_redirected_to root_path
  end

  def user
    {'nickname' => 'sferik', 'name' => 'Erik Michaels-Ober', 'location' => 'San Francisco', 'image' => 'http://a0.twimg.com/profile_images/1279736243/Github_Square_normal.jpg', 'description' => 'A mind forever voyaging through strange seas of thought, alone.', 'urls' => {'Website' => 'https://github.com/sferik', 'Twitter' => 'http://twitter.com/sferik'}}
  end
end
