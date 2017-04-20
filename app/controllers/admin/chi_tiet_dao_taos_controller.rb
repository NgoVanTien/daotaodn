class Admin::ChiTietDaoTaosController < Admin::ApplicationController
  before_action :load_chuongtrinhdaotao, only: %i(index new)
  def index

  end

  def new
    @
  end

  def show
  end

  def edit
  end

  private

  def load_chuongtrinhdaotao
    @chuongtrinhdaotao = ChuongTrinhDaoTao.find_by id: params[:chuong_trinh_dao_tao_id]
  end
end
