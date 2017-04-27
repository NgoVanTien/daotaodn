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

    # Cach xoa du lieu va luu lai .
    # ctdt = ChiTietDaoTao.where(chuong_trinh_dao_tao_id: params[:chuong_trinh_dao_tao_id])
    # if ctdt.any?
    #   ctdt.destroy_all
    # end
    # list_hoc_ky = params[:list_hoc_ky]
    # if list_hoc_ky.present?
    #   (1..params[:num_hocky].to_i).each do |num|
    #     hoc_ky = "hk_" + num.to_s
    #     if list_hoc_ky[hoc_ky].present?
    #       mamonhoc = list_hoc_ky[hoc_ky]
    #       mamonhoc.each do |val|
    #         ChiTietDaoTao.create(kyhoc: num, mon_hoc_id: val, chuong_trinh_dao_tao_id: params[:chuong_trinh_dao_tao_id])
    #       end
    #     end
    #   end
    # end


    select_val = params[:select_val]
    if select_val.present?
      ChiTietDaoTao.where(chuong_trinh_dao_tao_id: select_val).each do |ctdt_old|
        find_ctdt_backup = ChiTietDaoTao.where(kyhoc: ctdt_old.kyhoc, mon_hoc_id: ctdt_old.mon_hoc_id,
          chuong_trinh_dao_tao_id: params[:chuong_trinh_dao_tao_id])
        if find_ctdt_backup.blank?
          ChiTietDaoTao.create(kyhoc: ctdt_old.kyhoc, mon_hoc_id: ctdt_old.mon_hoc_id,
          chuong_trinh_dao_tao_id: params[:chuong_trinh_dao_tao_id])
        end
      end
    end
    # Cach tim vaf update du lieu
    list_hoc_ky = params[:list_hoc_ky]
    if list_hoc_ky.present?
      (1..params[:num_hocky].to_i).each do |num|
        hoc_ky = "hk_" + num.to_s
        if list_hoc_ky[hoc_ky].present?
          mamonhoc = list_hoc_ky[hoc_ky]
          mamonhoc.each do |val|
            find_ctdt = ChiTietDaoTao.where(mon_hoc_id: val, chuong_trinh_dao_tao_id: params[:chuong_trinh_dao_tao_id])
            if find_ctdt.present?
              find_ctdt.update(kyhoc: num)
            else
              ChiTietDaoTao.create(kyhoc: num, mon_hoc_id: val, chuong_trinh_dao_tao_id: params[:chuong_trinh_dao_tao_id])
            end
          end
        end
      end
    end
    ctdt = ChiTietDaoTao.where(mon_hoc_id: params[:delete_mon_hoc], chuong_trinh_dao_tao_id: params[:chuong_trinh_dao_tao_id])
    if ctdt.any?
      ctdt.destroy_all
    end

    # binding.pry
    # redirect_to action: "new", id: params[:chuong_trinh_dao_tao_id]
    redirect_to :root
    # redirect_to new_admin_chuong_trinh_dao_tao_chi_tiet_dao_tao_path params[:chuong_trinh_dao_tao_id]
  end

  private

  def load_chuongtrinhdaotao
    @chuongtrinhdaotao = ChuongTrinhDaoTao.find_by id: params[:chuong_trinh_dao_tao_id]
    @chuongtrinhdaotaos = ChuongTrinhDaoTao.where(khoa_id: @chuongtrinhdaotao.khoa_id)
  end
end
