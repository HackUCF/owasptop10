require 'test_helper'

class Owasp2ControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get logout" do
    get :logout
    assert_response :success
  end

  test "should get admin?" do
    get :admin?
    assert_response :success
  end

end
