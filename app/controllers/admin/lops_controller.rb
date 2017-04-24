class Admin::LopsController < Admin::ApplicationController
  before_action :load_lop, only: %i(destroy edit show update)
  before_action :load_chuong_trinh_dao_tao, only: %i(new edit)

  def index
    @search = Lop.search params[:q]
    @search.sorts  = "created_at desc" if @search.sorts.empty?
    @lops = @search.result.page(params[:page]).per 5
  end

  def show

  end

  def create
    @lop = Lop.new lop_params
    if @lop.save
      flash[:success] = "Bạn đả tạo thành công"
      redirect_to admin_lops_path
    else
      load_chuong_trinh_dao_tao
      flash[:danger] = "Bạn đả tạo không thành công"
      render :new
    end
  end

  def new
    @lop = Lop.new
  end

  def destroy
    if @lop.destroy
      flash[:success] = "Chúc mừng bạn đả xóa thành công."
    else
      flash[:danger] = "Xin lỗi ! Bạn đã xóa không thành công, xin thử lại."
    end
    redirect_to admin_lops_path
  end

  def edit

  end

  def update
    if @lop.update_attributes lop_params
      flash[:success] = "Chúc mừng bạn đả cập nhật thành công."
      redirect_to admin_lop_path
    else
      load_chuong_trinh_dao_tao
      flash[:danger] = "Xin lỗi ! Bạn đã cập nhật không thành công."
      render :edit
    end
  end

  private
  def lop_params
    current_params = params.require(:lop).permit(:tenlop, :chuong_trinh_dao_tao_id)
  end

  def load_lop
    @lop = Lop.find_by id: params[:id]
  end

  def load_chuong_trinh_dao_tao
    @chuongtrinhdaotaos = ChuongTrinhDaoTao.all
  end
end
