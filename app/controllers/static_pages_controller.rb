class StaticPagesController < ApplicationController
  def home
    @trangchu_thongbao = ThongBao.where(loai_hien_thi: 0).limit(2)
    @trangchu_sukien = ThongBao.where(loai_hien_thi: 1).limit(3)
  end

  def index
    @trangchu_thongbao = ThongBao.where(loai_hien_thi: 0).limit(1)
    @trangchu_sukien = ThongBao.where(loai_hien_thi: 1).limit(2)
  end

  def show
    @thongbao = ThongBao.find_by_id params[:id]
  end
end
