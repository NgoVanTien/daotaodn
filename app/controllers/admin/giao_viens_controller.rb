class Admin::GiaoViensController < Admin::ApplicationController
  before_action :load_giao_vien, only: %i(destroy edit show update)
  before_action :load_khoa, only: %i(new edit)

  def index
    @search = GiaoVien.search params[:q]
    @search.sorts  = "created_at desc" if @search.sorts.empty?
    @giaoviens = @search.result.page(params[:page]).per 5
  end

  def show

  end

  def create
    @giaovien = GiaoVien.new giaovien_params
    if @giaovien.save
      flash[:success] = "Bạn đả tạo thành công"
      redirect_to admin_giao_viens_path
    else
      load_khoa
      flash[:danger] = "Bạn đả tạo không thành công"
      render :new
    end
  end

  def new
    @giaovien = GiaoVien.new
  end

  def destroy
    if @giaovien.destroy
      flash[:success] = "Chúc mừng bạn đả xóa thành công."
    else
      flash[:danger] = "Xin lỗi ! Bạn đã xóa không thành công, xin thử lại."
    end
    redirect_to admin_giao_viens_path
  end

  def edit

  end

  def update
    if @giaovien.update_attributes giaovien_params
      flash[:success] = "Chúc mừng bạn đả cập nhật thành công."
      redirect_to admin_giao_vien_path
    else
      load_khoa
      flash[:danger] = "Xin lỗi ! Bạn đã cập nhật không thành công."
      render :edit
    end
  end

  private
  def giaovien_params
    current_params = params.require(:giao_vien).permit(:tengiaovien, :namsinh, :khoa_id)
  end

  def load_giao_vien
    @giaovien = GiaoVien.find_by id: params[:id]
  end

  def load_khoa
    @khoas = Khoa.all
  end
end
