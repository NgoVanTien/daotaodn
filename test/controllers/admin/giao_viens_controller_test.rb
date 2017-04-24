require 'test_helper'

class Admin::GiaoViensControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_giao_viens_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_giao_viens_show_url
    assert_response :success
  end

  test "should get new" do
    get admin_giao_viens_new_url
    assert_response :success
  end

  test "should get edit" do
    get admin_giao_viens_edit_url
    assert_response :success
  end

end
