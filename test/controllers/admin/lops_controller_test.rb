require 'test_helper'

class Admin::LopsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_lops_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_lops_show_url
    assert_response :success
  end

  test "should get new" do
    get admin_lops_new_url
    assert_response :success
  end

  test "should get edit" do
    get admin_lops_edit_url
    assert_response :success
  end

end
