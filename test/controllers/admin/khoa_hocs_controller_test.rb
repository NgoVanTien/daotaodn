require 'test_helper'

class Admin::KhoaHocsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_khoa_hocs_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_khoa_hocs_show_url
    assert_response :success
  end

  test "should get new" do
    get admin_khoa_hocs_new_url
    assert_response :success
  end

  test "should get edit" do
    get admin_khoa_hocs_edit_url
    assert_response :success
  end

end
