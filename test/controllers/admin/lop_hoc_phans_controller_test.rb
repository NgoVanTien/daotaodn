require 'test_helper'

class Admin::LopHocPhansControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_lop_hoc_phans_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_lop_hoc_phans_show_url
    assert_response :success
  end

  test "should get new" do
    get admin_lop_hoc_phans_new_url
    assert_response :success
  end

  test "should get edit" do
    get admin_lop_hoc_phans_edit_url
    assert_response :success
  end

end
