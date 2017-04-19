class Admin::BacDaoTaosController < Admin::ApplicationController
  before_action :load_bacdaotao, only: %i(show destroy edit update)

  def index
    @search = BacDaoTao.search params[:q]
    @search.sorts = "created_at desc" if @search.sorts.empty?
    @bacdaotaos = @search.result.page(params[:page]).per 5
  end

  def show
  end

  def new
    @bacdaotao = BacDaoTao.new
  end

  def edit
  end

  def create
    @bacdaotao = BacDaoTao.new bacdaotao_params
    if @bacdaotao.save
      flash[:success] = "Chúc mừng bạn! Bạn đả tạo thành công."
      redirect_to admin_bac_dao_taos_path
    else
      render :new
    end
  end

  def destroy
    if @bacdaotao.destroy
      flash[:success] = "Chúc mừng bạn đả xóa thành công."
    else
      flash[:danger] = "Xin lỗi ! Bạn đã xóa không thành công, xin thử lại."
    end
    redirect_to admin_bac_dao_taos_path
  end

  def update
    if @bacdaotao.update_attributes bacdaotao_params
      flash[:success] = "Chúc mừng bạn đả cập nhật thành công."
      redirect_to admin_bac_dao_tao_path
    else
      flash[:danger] = "Xin lỗi ! Bạn đã cập nhật không thành công."
      render :edit
    end
  end

  private

  def bacdaotao_params
    current_params = params.require(:bac_dao_tao).permit(:kyhieu, :tenbacdaotao)
  end

  def load_bacdaotao
    @bacdaotao = BacDaoTao.find_by id: params[:id]
  end
end
