require 'test_helper'

class Owasp4ControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get pw" do
    get :pw
    assert_response :success
  end

end
