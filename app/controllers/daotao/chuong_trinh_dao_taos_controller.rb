class Daotao::ChuongTrinhDaoTaosController < Daotao::ApplicationController
  def index
    @khoas = Khoa.all
    @chuongtrinhdaotaos = Khoa.find_by_id(params[:id_khoa])&.chuong_trinh_dao_taos
  end

  def show
    @chitietdaotaos = ChiTietDaoTao.where(chuong_trinh_dao_tao_id: params[:id])
  end
end
