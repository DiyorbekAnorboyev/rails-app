require "test_helper"

class ProjectAdminsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get project_admins_index_url
    assert_response :success
  end

  test "should get new" do
    get project_admins_new_url
    assert_response :success
  end
end
