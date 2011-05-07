require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select "title", "Sign in with Twitter"
    assert_select "form" do
      assert_select "[action=?]", "/auth/twitter"
      assert_select "[method=?]", "get"
    end
    assert_select "input" do
      assert_select "[type=?]", "image"
      assert_select "[value=?]", "Sign in"
    end
  end
end
