class Admin::LichGiangsController < Admin::ApplicationController
  def index
    @search = PhanMon.mon_trongthoigian(current_tai_khoan.giao_vien_id).search params[:q]
    @search.sorts  = "created_at desc" if @search.sorts.empty?
    @phanmons = @search.result.page(params[:page]).per 5

    @phanmon_hetthoigian = PhanMon.where(giao_vien_id: current_tai_khoan.giao_vien_id) - PhanMon.mon_trongthoigian(current_tai_khoan.giao_vien_id)
  end

  def show
  end

  def new
    @phanmon = PhanMon.find_by(id: params[:phanmon])
    
  end

  def edit
  end
end
