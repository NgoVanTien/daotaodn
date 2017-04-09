class Admin::KhoasController < Admin::ApplicationController
  before_action :load_khoa, only: %i(destroy edit show update)

  def index
    @search = Khoa.search params[:q]
    @search.sorts  = "created_at desc" if @search.sorts.empty?
    @khoas = @search.result.page(params[:page]).per 5
  end

  def show

  end

  def create
    @khoa = Khoa.new khoa_params
    if @khoa.save
      flash[:success] = "Chúc mừng bạn! Bạn đả tạo thành công."
      redirect_to admin_khoas_path
    else
      render :new
    end
  end

  def new
    @khoa = Khoa.new
  end

  def destroy
    if @khoa.destroy
      flash[:success] = "Chúc mừng bạn đả xóa thành công."
    else
      flash[:danger] = "Xin lỗi ! Bạn đã xóa không thành công, xin thử lại."
    end
    redirect_to admin_khoas_path
  end

  def edit

  end

  def update
    if @khoa.update_attributes khoa_params
      flash[:success] = "Chúc mừng bạn đả cập nhật thành công."
    else
      flash[:danger] = "Xin lỗi ! Bạn đã cập nhật không thành công."
    end
    redirect_to admin_khoa_path
  end

  private
  def khoa_params
    current_params = params.require(:khoa).permit(:tenkhoa)
  end

  def load_khoa
    @khoa = Khoa.find_by id: params[:id]
  end
end
