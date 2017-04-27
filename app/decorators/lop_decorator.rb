class LopDecorator < Draper::Decorator
  delegate_all

  def display_button_kyhoc lop, kyhoc
    is_phanmon = PhanMon.where(hocky: kyhoc, chuong_trinh_dao_tao_id: lop.chuong_trinh_dao_tao_id, lop_id: lop)
    if is_phanmon.present?
      "show"
    else
      "edit"
    end
  end
end
