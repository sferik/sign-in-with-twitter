require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should create session on OAuth callback" do
    result = {}
    result['omniauth.auth'] = {}
    result['omniauth.auth']['user_info'] = {"nickname"=>"sferik", "name"=>"Erik Michaels-Ober", "location"=>"San Francisco", "image"=>"http://a0.twimg.com/profile_images/1279736243/Github_Square_normal.jpg", "description"=>"A mind forever voyaging through strange seas of thought, alone.", "urls"=>{"Website"=>"https://github.com/sferik", "Twitter"=>"http://twitter.com/sferik"}}
    request.stubs(:env => result)
    get :create, oauth_token: "abc", oauth_verifier: "123"
    assert_not_nil session['user_info']
    assert_redirected_to show_path
  end
end
