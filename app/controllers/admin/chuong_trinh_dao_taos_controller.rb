class Admin::ChuongTrinhDaoTaosController < Admin::ApplicationController
  before_action :load_chuongtrinhdaotao, only: %i(show destroy edit update)
  before_action :load_bacdaotao, only: %i(new edit)
  before_action :load_khoa, only: %i(new edit)
  before_action :load_khoahoc, only: %i(new edit)

  def index
    @search = ChuongTrinhDaoTao.search params[:q]
    @search.sorts = "created_at desc" if @search.sorts.empty?
    @chuongtrinhdaotaos = @search.result.page(params[:page]).per 5
  end

  def show
  end

  def new
    @chuongtrinhdaotao = ChuongTrinhDaoTao.new
  end

  def edit
  end

  def create
    @chuongtrinhdaotao = ChuongTrinhDaoTao.new chuongtrinhdaotao_params
    if @chuongtrinhdaotao.save
      flash[:success] = "Chúc mừng bạn! Bạn đả tạo thành công."
      redirect_to admin_chuong_trinh_dao_taos_path
    else
      load_bacdaotao
      load_khoa
      load_khoahoc
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
      load_bacdaotao
      load_khoa
      load_khoahoc
      flash[:danger] = "Xin lỗi ! Bạn đã cập nhật không thành công."
      render :edit
    end
  end

  private

  def chuongtrinhdaotao_params
    current_params = params.require(:chuong_trinh_dao_tao).permit(:mactdt, :tenctdt, :sotinchi, :bac_dao_tao_id, :khoa_hoc_id, :khoa_id)
  end

  def load_chuongtrinhdaotao
    @chuongtrinhdaotao = ChuongTrinhDaoTao.find_by id: params[:id]
  end

  def load_bacdaotao
    @bacdaotaos = BacDaoTao.all
  end

  def load_khoa
    @khoas = Khoa.all
  end

  def load_khoahoc
    @khoahocs = KhoaHoc.all
  end
end
