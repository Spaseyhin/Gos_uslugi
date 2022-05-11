require "test_helper"

class LeaksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get leaks_index_url
    assert_response :success
  end

  test "should get new" do
    get leaks_new_url
    assert_response :success
  end

  test "should get create" do
    get leaks_create_url
    assert_response :success
  end

  test "should get destroy" do
    get leaks_destroy_url
    assert_response :success
  end
end
