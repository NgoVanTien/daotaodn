require 'test_helper'

class Admin::LichGiangsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_lich_giangs_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_lich_giangs_show_url
    assert_response :success
  end

  test "should get new" do
    get admin_lich_giangs_new_url
    assert_response :success
  end

  test "should get edit" do
    get admin_lich_giangs_edit_url
    assert_response :success
  end

end
