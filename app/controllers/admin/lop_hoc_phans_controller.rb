class Admin::LopHocPhansController < Admin::ApplicationController
  before_action :load_lophocphan, only: %i(destroy edit show update)
  before_action :load_chuong_trinh_dao_tao, only: %i(new edit)

  def index
    @search = LopHocPhan.search params[:q]
    @search.sorts  = "created_at desc" if @search.sorts.empty?
    @lophocphans = @search.result.page(params[:page]).per 5
  end

  def show

  end

  def create
    @lophocphan = LopHocPhan.new lophocphan_params
    if @lophocphan.save
      flash[:success] = "Bạn đả tạo thành công"
      redirect_to admin_lop_hoc_phans_path
    else
      load_chuong_trinh_dao_tao
      flash[:danger] = "Bạn đả tạo không thành công"
      render :new
    end
  end

  def new
    @lophocphan = LopHocPhan.new
  end

  def destroy
    if @lophocphan.destroy
      flash[:success] = "Chúc mừng bạn đả xóa thành công."
    else
      flash[:danger] = "Xin lỗi ! Bạn đã xóa không thành công, xin thử lại."
    end
    redirect_to admin_lop_hoc_phans_path
  end

  def edit

  end

  def update
    if @lophocphan.update_attributes lophocphan_params
      flash[:success] = "Chúc mừng bạn đả cập nhật thành công."
      redirect_to admin_lop_hoc_phan_path
    else
      load_chuong_trinh_dao_tao
      flash[:danger] = "Xin lỗi ! Bạn đã cập nhật không thành công."
      render :edit
    end
  end

  private
  def lophocphan_params
    current_params = params.require(:lop_hoc_phan).permit(:ma_lhp, :tenlop, :chuong_trinh_dao_tao_id)
  end

  def load_lophocphan
    @lophocphan = LopHocPhan.find_by id: params[:id]
  end

  def load_chuong_trinh_dao_tao
    @chuongtrinhdaotaos = ChuongTrinhDaoTao.all
  end
end
