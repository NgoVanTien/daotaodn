require 'test_helper'

class Admin::ChuongTrinhDaoTaosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_chuong_trinh_dao_taos_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_chuong_trinh_dao_taos_show_url
    assert_response :success
  end

  test "should get new" do
    get admin_chuong_trinh_dao_taos_new_url
    assert_response :success
  end

  test "should get edit" do
    get admin_chuong_trinh_dao_taos_edit_url
    assert_response :success
  end

end
