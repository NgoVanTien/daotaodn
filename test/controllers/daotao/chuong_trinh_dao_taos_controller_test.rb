require 'test_helper'

class Daotao::ChuongTrinhDaoTaosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get daotao_chuong_trinh_dao_taos_index_url
    assert_response :success
  end

end
