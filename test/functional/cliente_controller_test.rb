require 'test_helper'

class ClienteControllerTest < ActionController::TestCase
  test "should get cliente" do
    get :cliente
    assert_response :success
  end

end
