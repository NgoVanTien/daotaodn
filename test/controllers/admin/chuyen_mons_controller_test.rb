require 'test_helper'

class Admin::ChuyenMonsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_chuyen_mons_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_chuyen_mons_show_url
    assert_response :success
  end

  test "should get new" do
    get admin_chuyen_mons_new_url
    assert_response :success
  end

  test "should get edit" do
    get admin_chuyen_mons_edit_url
    assert_response :success
  end

end
