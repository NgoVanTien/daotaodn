class Admin::SinhViensController < Admin::ApplicationController
  before_action :load_sinh_vien, only: %i(destroy edit show update)
  before_action :load_lop, only: %i(new edit)

  def index
    @search = SinhVien.search params[:q]
    @search.sorts  = "created_at desc" if @search.sorts.empty?
    @sinhviens = @search.result.page(params[:page]).per 5
  end

  def show

  end

  def create
    @sinhvien = SinhVien.new sinhvien_params
    if @sinhvien.save
      flash[:success] = "Bạn đả tạo thành công"
      redirect_to admin_sinh_viens_path
    else
      load_lop
      flash[:danger] = "Bạn đả tạo không thành công"
      render :new
    end
  end

  def new
    @sinhvien = SinhVien.new
  end

  def destroy
    if @sinhvien.destroy
      flash[:success] = "Chúc mừng bạn đả xóa thành công."
    else
      flash[:danger] = "Xin lỗi ! Bạn đã xóa không thành công, xin thử lại."
    end
    redirect_to admin_sinh_viens_path
  end

  def edit

  end

  def update
    if @sinhvien.update_attributes sinhvien_params
      flash[:success] = "Chúc mừng bạn đả cập nhật thành công."
      redirect_to admin_sinh_vien_path
    else
      load_lop
      flash[:danger] = "Xin lỗi ! Bạn đã cập nhật không thành công."
      render :edit
    end
  end

  private
  def sinhvien_params
    current_params = params.require(:sinh_vien).permit(:tensinhvien, :namsinh, :lop_id)
  end

  def load_sinh_vien
    @sinhvien = SinhVien.find_by id: params[:id]
  end

  def load_lop
    @lops = Lop.all
  end
end
