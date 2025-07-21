require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should redirect to login if not authenticated" do
    get root_path
    assert_response :redirect
    assert_redirected_to login_path
  end
end
