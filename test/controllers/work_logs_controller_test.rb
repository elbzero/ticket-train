require 'test_helper'

class WorkLogsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get work_logs_new_url
    assert_response :success
  end

  test "should get edit" do
    get work_logs_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get work_logs_destroy_url
    assert_response :success
  end

  test "should get create" do
    get work_logs_create_url
    assert_response :success
  end

  test "should get update" do
    get work_logs_update_url
    assert_response :success
  end

end
