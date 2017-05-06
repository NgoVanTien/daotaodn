class Admin::LichGiangsController < Admin::ApplicationController
  def index
    @search = PhanMon.mon_trongthoigian(current_tai_khoan.giao_vien_id).search params[:q]
    @search.sorts  = "created_at desc" if @search.sorts.empty?
    @phanmons = @search.result.page(params[:page]).per 5

    @phanmon_hetthoigian = PhanMon.includes(:lich_giangs).where(giao_vien_id: current_tai_khoan.giao_vien_id) - PhanMon.mon_trongthoigian(current_tai_khoan.giao_vien_id)

  end

  def show
  end

  def new
    @phanmon = PhanMon.find_by(id: params[:phanmon])

    @lichgiang = LichGiang.new

  end

  def edit
    @lichgiang = LichGiang.find_by_id params[:id]
    @phanmon = PhanMon.find_by(id: params[:phanmon])
  end


  def create
    @phanmon = LichGiang.new phanmon_params
    if @phanmon.save
      flash[:success] = "Chúc mừng bạn! Bạn đả tạo thành công."
      redirect_to admin_lich_giangs_path
    else
      render :new
    end
  end

  def update
    @lichgiang = LichGiang.find_by_id params[:id]
    if @lichgiang.update_attributes lichgiang_update
      flash[:success] = "Chúc mừng bạn đả cập nhật thành công."
      redirect_to admin_lich_giangs_path
    else
      flash[:danger] = "Xin lỗi ! Bạn đã cập nhật không thành công."
      render :edit
    end
  end

  private

  def phanmon_params
    current_params = params.require(:lich_giang).permit(:ngayday, :phonghoc, :tietbatday, :tietketthuc, :noidungday, :phan_mon_id)
  end

  def lichgiang_update
    current_params = params.require(:lich_giang).permit(:danhgia)
  end

end
