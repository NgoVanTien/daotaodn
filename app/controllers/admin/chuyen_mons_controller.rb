class Admin::ChuyenMonsController < Admin::ApplicationController
  before_action :load_chuyen_mon, only: %i(destroy edit show update)
  before_action :load_mon_hoc, only: %i(new edit)
  before_action :load_giao_vien, only: %i(new edit)

  def index
    @search = ChuyenMon.search params[:q]
    @search.sorts  = "created_at desc" if @search.sorts.empty?
    @chuyenmons = @search.result.page(params[:page]).per 5
  end

  def show

  end

  def create
    @chuyenmon = ChuyenMon.new chuyenmon_params
    if @chuyenmon.save
      flash[:success] = "Bạn đả tạo thành công môn học"
      redirect_to admin_chuyen_mons_path
    else
      load_mon_hoc
      load_giao_vien
      flash[:danger] = "Bạn đả tạo không thành công"
      render :new
    end
  end

  def new
    @chuyenmon = ChuyenMon.new
  end

  def destroy
    if @chuyenmon.destroy
      flash[:success] = "Chúc mừng bạn đả xóa thành công."
    else
      flash[:danger] = "Xin lỗi ! Bạn đã xóa không thành công, xin thử lại."
    end
    redirect_to admin_chuyen_mons_path
  end

  def edit

  end

  def update
    if @chuyenmon.update_attributes chuyenmon_params
      flash[:success] = "Chúc mừng bạn đả cập nhật thành công."
      redirect_to admin_chuyen_mon_path
    else
      load_mon_hoc
      load_giao_vien
      flash[:danger] = "Xin lỗi ! Bạn đã cập nhật không thành công."
      render :edit
    end
  end

  private
  def chuyenmon_params
    current_params = params.require(:chuyen_mon).permit(:chuyenmon, :giao_vien_id, :mon_hoc_id)
  end

  def load_chuyen_mon
    @chuyenmon = ChuyenMon.find_by id: params[:id]
  end

  def load_mon_hoc
    @monhocs = MonHoc.all
  end

  def load_giao_vien
    @giaoviens = GiaoVien.all
  end
end
