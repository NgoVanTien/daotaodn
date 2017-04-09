class Admin::MonHocsController < Admin::ApplicationController
  before_action :load_mon_hoc, only: %i(destroy edit show update)

  def index
    @search = MonHoc.search params[:q]
    @search.sorts  = "created_at desc" if @search.sorts.empty?
    @monhocs = @search.result.page(params[:page]).per 5
  end

  def show

  end

  def create
    @monhoc = MonHoc.new monhoc_params
    if @monhoc.save
      flash[:success] = "Bạn đả tạo thành công loại môn học"
      redirect_to admin_mon_hocs_path
    else
      render :new
    end
  end

  def new
    @monhoc = MonHoc.new
  end

  def destroy
    if @monhoc.destroy
      flash[:success] = "Chúc mừng bạn đả xóa thành công."
    else
      flash[:danger] = "Xin lỗi ! Bạn đã xóa không thành công, xin thử lại."
    end
    redirect_to admin_mon_hocs_path
  end

  def edit

  end

  def update
    if @monhoc.update_attributes monhoc_params
      flash[:success] = "Chúc mừng bạn đả cập nhật thành công."
    else
      flash[:danger] = "Xin lỗi ! Bạn đã cập nhật không thành công."
    end
    redirect_to admin_mon_hoc_path
  end

  private
  def monhoc_params
    current_params = params.require(:loai_mon_hoc).permit(:mamonhoc, :tenmonhoc, :cachviettat,
      :hesotinchi, :khoa_id, :loai_mon_hoc_id)
  end

  def load_mon_hoc
    @monhoc = MonHoc.find_by id: params[:id]
  end
end
