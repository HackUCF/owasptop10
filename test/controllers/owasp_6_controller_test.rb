require 'test_helper'

class Owasp6ControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
