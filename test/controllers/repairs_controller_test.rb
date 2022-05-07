require "test_helper"

class RepairsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get repairs_index_url
    assert_response :success
  end

  test "should get new" do
    get repairs_new_url
    assert_response :success
  end

  test "should get create" do
    get repairs_create_url
    assert_response :success
  end

  test "should get destroy" do
    get repairs_destroy_url
    assert_response :success
  end
end
