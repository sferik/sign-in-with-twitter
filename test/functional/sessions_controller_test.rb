require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should create session on OAuth callback" do
    get :create, oauth_token: "abc", oauth_verifier: "123"
    assert_redirected_to root_path
  end
end
