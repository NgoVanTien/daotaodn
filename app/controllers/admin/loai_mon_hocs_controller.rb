class Admin::LoaiMonHocsController < Admin::ApplicationController
  before_action :load_loai_mon_hoc, only: %i(destroy edit show update)

  def index
    @search = LoaiMonHoc.search params[:q]
    @search.sorts  = "created_at desc" if @search.sorts.empty?
    @loaimonhocs = @search.result.page(params[:page]).per 5
  end

  def show

  end

  def create
    @loaimonhoc = LoaiMonHoc.new loaimonhoc_params
    if @loaimonhoc.save
      flash[:success] = "Bạn đả tạo thành công loại môn học"
      redirect_to admin_loai_mon_hocs_path
    else
      render :new
    end
  end

  def new
    @loaimonhoc = LoaiMonHoc.new
  end

  def destroy
    if @loaimonhoc.destroy
      flash[:success] = "Chúc mừng bạn đả xóa thành công."
    else
      flash[:danger] = "Xin lỗi ! Bạn đã xóa không thành công, xin thử lại."
    end
    redirect_to admin_loai_mon_hocs_path
  end

  def edit

  end

  def update
    if @loaimonhoc.update_attributes loaimonhoc_params
      flash[:success] = "Chúc mừng bạn đả cập nhật thành công."
      redirect_to admin_loai_mon_hoc_path
    else
      flash[:danger] = "Xin lỗi ! Bạn đã cập nhật không thành công."
      render :edit
    end
  end

  private
  def loaimonhoc_params
    current_params = params.require(:loai_mon_hoc).permit(:ten)
  end

  def load_loai_mon_hoc
    @loaimonhoc = LoaiMonHoc.find_by id: params[:id]
  end
end
