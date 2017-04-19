class Admin::KhoaHocsController < Admin::ApplicationController
  before_action :load_khoahoc, only: %i(show destroy edit update)

  def index
    @search = KhoaHoc.search params[:q]
    @search.sorts = "created_at desc" if @search.sorts.empty?
    @khoahocs = @search.result.page(params[:page]).per 5
  end

  def show
  end

  def new
    @khoahoc = KhoaHoc.new
  end

  def edit
  end

  def create
    @khoahoc = KhoaHoc.new khoahoc_params
    if @khoahoc.save
      flash[:success] = "Chúc mừng bạn! Bạn đả tạo thành công."
      redirect_to admin_khoa_hocs_path
    else
      render :new
    end
  end

  def destroy
    if @khoahoc.destroy
      flash[:success] = "Chúc mừng bạn đả xóa thành công."
    else
      flash[:danger] = "Xin lỗi ! Bạn đã xóa không thành công, xin thử lại."
    end
    redirect_to admin_khoa_hocs_path
  end

  def update
    if @khoahoc.update_attributes khoahoc_params
      flash[:success] = "Chúc mừng bạn đả cập nhật thành công."
    else
      flash[:danger] = "Xin lỗi ! Bạn đã cập nhật không thành công."
    end
    redirect_to admin_khoa_hoc_path
  end

  private

  def khoahoc_params
    current_params = params.require(:khoa_hoc).permit(:tenkhoahoc)
    current_params.merge! nambatdau: params[:khoa_hoc][:nambatdau].to_date.to_s,
      namketthuc: params[:khoa_hoc][:namketthuc].to_date.to_s
  end

  def load_khoahoc
    @khoahoc = KhoaHoc.find_by id: params[:id]
  end
end
