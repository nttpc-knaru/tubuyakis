require 'test_helper'

class TubuyakiControllerTest < ActionController::TestCase
  test "should get confirm" do
    get :confirm
    assert_response :success
  end

end
