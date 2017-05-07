require 'test_helper'

class Trangchu::GiaoViensControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get trangchu_giao_viens_index_url
    assert_response :success
  end

  test "should get show" do
    get trangchu_giao_viens_show_url
    assert_response :success
  end

end
