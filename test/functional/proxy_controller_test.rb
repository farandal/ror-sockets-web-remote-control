require 'test_helper'

class ProxyControllerTest < ActionController::TestCase
  test "should get proxy" do
    get :proxy
    assert_response :success
  end

end
