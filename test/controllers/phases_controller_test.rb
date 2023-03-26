require "test_helper"

class PhasesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get phases_index_url
    assert_response :success
  end

  test "should get show" do
    get phases_show_url
    assert_response :success
  end

  test "should get create" do
    get phases_create_url
    assert_response :success
  end

  test "should get update" do
    get phases_update_url
    assert_response :success
  end

  test "should get destroy" do
    get phases_destroy_url
    assert_response :success
  end
end
