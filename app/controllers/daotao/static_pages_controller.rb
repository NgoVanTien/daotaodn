class Daotao::StaticPagesController < Daotao::ApplicationController
  def index
    @sinhvien_thongbao = ThongBao.where(loai_hien_thi: 2).limit(20).order created_at: :desc
    @sinhvien_lophocphan = ThongBao.where(gui_den: 0).limit(20).order created_at: :desc
    @sinhvien_khoamoi = ThongBao.where(gui_den: 1).limit(20).order created_at: :desc

  end
end
