require "test_helper"

class ActionItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get action_items_index_url
    assert_response :success
  end

  test "should get show" do
    get action_items_show_url
    assert_response :success
  end

  test "should get create" do
    get action_items_create_url
    assert_response :success
  end

  test "should get update" do
    get action_items_update_url
    assert_response :success
  end

  test "should get destroy" do
    get action_items_destroy_url
    assert_response :success
  end
end
