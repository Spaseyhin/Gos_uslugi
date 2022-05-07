require "test_helper"

class EquisControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get equis_index_url
    assert_response :success
  end

  test "should get new" do
    get equis_new_url
    assert_response :success
  end

  test "should get create" do
    get equis_create_url
    assert_response :success
  end

  test "should get destroy" do
    get equis_destroy_url
    assert_response :success
  end
end
