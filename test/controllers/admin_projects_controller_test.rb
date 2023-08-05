require "test_helper"

class AdminProjectsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_projects_index_url
    assert_response :success
  end
end
