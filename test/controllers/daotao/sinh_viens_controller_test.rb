require 'test_helper'

class Daotao::SinhViensControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get daotao_sinh_viens_index_url
    assert_response :success
  end

  test "should get show" do
    get daotao_sinh_viens_show_url
    assert_response :success
  end

end
