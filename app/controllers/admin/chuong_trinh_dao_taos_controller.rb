class Admin::ChuongTrinhDaoTaosController < Admin::ApplicationController
  before_action :load_chuongtrinhdaotao, only: %i(show destroy edit update)

  def index
    @search = ChuongTrinhDaoTao.search params[:q]
    @search.sorts = "created_at desc" if @search.sorts.empty?
    @chuongtrinhdaotaos = @search.result.page(params[:page]).per 5
  end

  def show
  end

  def new
    @chuongtrinhdaotao = ChươngTrinhDaoTao.new
  end

  def edit
  end

  def create
    @chuongtrinhdaotao = ChươngTrinhDaoTao.new chuongtrinhdaotao_params
    if @chuongtrinhdaotao.save
      flash[:success] = "Chúc mừng bạn! Bạn đả tạo thành công."
      redirect_to admin_chuong_trinh_dao_taos_path
    else
      render :new
    end
  end

  def destroy
    if @chuongtrinhdaotao.destroy
      flash[:success] = "Chúc mừng bạn đả xóa thành công."
    else
      flash[:danger] = "Xin lỗi ! Bạn đã xóa không thành công, xin thử lại."
    end
    redirect_to admin_chuong_trinh_dao_taos_path
  end

  def update
    if @chuongtrinhdaotao.update_attributes chuongtrinhdaotao_params
      flash[:success] = "Chúc mừng bạn đả cập nhật thành công."
      redirect_to admin_chuong_trinh_dao_tao_path
    else
      flash[:danger] = "Xin lỗi ! Bạn đã cập nhật không thành công."
      render :edit
    end
  end

  private

  def chuongtrinhdaotao_params
    current_params = params.require(:chuong_trinh_dao_tao).permit(:kyhieu, :tenbacdaotao)
  end

  def load_chuongtrinhdaotao
    @chuongtrinhdaotao = ChươngTrinhDaoTao.find_by id: params[:id]
  end
end
