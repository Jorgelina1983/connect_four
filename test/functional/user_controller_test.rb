require 'test_helper'

class UserControllerTest < ActionController::TestCase
  test "should get 1" do
    get :1
    assert_response :success
  end

  test "should get 2" do
    get :2
    assert_response :success
  end

end
