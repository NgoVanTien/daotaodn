class Admin::PhanMonsController < Admin::ApplicationController
  def index
    @khoas = Khoa.all
    @chuongtrinhdaotaos = ChuongTrinhDaoTao.all
    @search = Lop.search params[:q]

    if params[:info].present?
      if params[:info][:ten_khoa].present?
        @chuongtrinhdaotaos = ChuongTrinhDaoTao.where(khoa_id: params[:info][:ten_khoa])
        @search = Lop.where(chuong_trinh_dao_tao_id: ChuongTrinhDaoTao.where(khoa_id: params[:info][:ten_khoa])).search params[:q]
        if params[:info][:ten_ctdt].present?
          @search = Lop.where(chuong_trinh_dao_tao_id: ChuongTrinhDaoTao.where(id: params[:info][:ten_ctdt] )).search params[:q]
        end
      end
    end

    @search.sorts  = "created_at desc" if @search.sorts.empty?
    @lops = @search.result.page(params[:page]).per 5


  end

  def show
  end

  def new
    lop = Lop.find_by(id: params[:lop])
    chuongtrinhdaotao = lop.chuong_trinh_dao_tao
    @chitietdaotaos = ChiTietDaoTao.where(chuong_trinh_dao_tao_id: chuongtrinhdaotao)
    @giaoviens = GiaoVien.all
  end

  def edit
  end
end
