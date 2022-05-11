require "test_helper"

class ElectricsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get electrics_index_url
    assert_response :success
  end

  test "should get new" do
    get electrics_new_url
    assert_response :success
  end

  test "should get create" do
    get electrics_create_url
    assert_response :success
  end

  test "should get destroy" do
    get electrics_destroy_url
    assert_response :success
  end
end
