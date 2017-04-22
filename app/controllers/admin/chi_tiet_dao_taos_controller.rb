class Admin::ChiTietDaoTaosController < Admin::ApplicationController
  before_action :load_chuongtrinhdaotao, only: %i(index new)
  def index

  end

  def new
    @monhocs = MonHoc.mon_thuoc_khoa params[:chuong_trinh_dao_tao_id]
    @chitietdaotaos = ChiTietDaoTao.where(chuong_trinh_dao_tao_id: params[:chuong_trinh_dao_tao_id])
    @monhoc_daluu = @monhocs - MonHoc.where(id: @chitietdaotaos.pluck(:mon_hoc_id))
  end

  def show
  end

  def edit
  end

  def create
    ctdt = ChiTietDaoTao.where(chuong_trinh_dao_tao_id: params[:chuong_trinh_dao_tao_id])
    if ctdt.any?
      ctdt.destroy_all
    end
    list_hoc_ky = params[:list_hoc_ky]
    if list_hoc_ky.present?
      (1..params[:num_hocky].to_i).each do |num|
        hoc_ky = "hk_" + num.to_s
        if list_hoc_ky[hoc_ky].present?
          mamonhoc = list_hoc_ky[hoc_ky]
          mamonhoc.each do |val|
            ChiTietDaoTao.create(kyhoc: num, mon_hoc_id: val, chuong_trinh_dao_tao_id: params[:chuong_trinh_dao_tao_id])
          end
        end
      end
    end
    redirect_to new_admin_chuong_trinh_dao_tao_chi_tiet_dao_tao_path(params[:chuong_trinh_dao_tao_id])
  end

  private

  def load_chuongtrinhdaotao
    @chuongtrinhdaotao = ChuongTrinhDaoTao.find_by id: params[:chuong_trinh_dao_tao_id]
  end
end
