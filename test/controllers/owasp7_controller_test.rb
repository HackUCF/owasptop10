require 'test_helper'

class Owasp7ControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
