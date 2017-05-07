class Daotao::SinhViensController < Daotao::ApplicationController
  def index
    @khoas = Khoa.all
    @lops = Lop.where(chuong_trinh_dao_tao_id: Khoa.find_by_id(params[:id_khoa])&.chuong_trinh_dao_taos&.pluck(:id))
    @sinhviens = SinhVien.where(lop_id: params[:id_lop]) if params[:id_lop].present?
  end

  def show
  end
end
