class Admin::ThongBaosController < Admin::ApplicationController
  before_action :load_thongbao, only: %i(show destroy edit update)


  def index
    if current_tai_khoan.role == "admin"
      @search = ThongBao.where(loai_hien_thi: [0,1,2,3,4,5,6]).search params[:q]
    else
      @search = ThongBao.where(giao_vien_id: current_tai_khoan.giao_vien_id).search params[:q]
    end
    @search.sorts = "created_at desc" if @search.sorts.empty?
    @thongbaos = @search.result.page(params[:page]).per 5
  end

  def show
  end

  def new
    @thongbao= ThongBao.new
  end

  def edit
  end

  def create
    @thongbao = ThongBao.new thongbao_params
    if @thongbao.save
      flash[:success] = "Chúc mừng bạn! Bạn đả tạo thành công."
      redirect_to admin_thong_baos_path
    else
      render :new
    end
  end

  def destroy
    if @thongbao.destroy
      flash[:success] = "Chúc mừng bạn đả xóa thành công."
    else
      flash[:danger] = "Xin lỗi ! Bạn đã xóa không thành công, xin thử lại."
    end
    redirect_to admin_thong_baos_path
  end

  def update
    if @thongbao.update_attributes thongbao_params
      flash[:success] = "Chúc mừng bạn đả cập nhật thành công."
      redirect_to admin_thong_bao_path
    else
      flash[:danger] = "Xin lỗi ! Bạn đã cập nhật không thành công."
      render :edit
    end
  end

  private

  def thongbao_params
    current_params = params.require(:thong_bao).permit(:tieu_de, :noi_dung_khai_quat, :noi_dung, :anh, :loai_hien_thi, :giao_vien_id, :gui_den, :ngay_thong_bao)
  end

  def load_thongbao
    @thongbao = ThongBao.find_by id: params[:id]
  end
end
