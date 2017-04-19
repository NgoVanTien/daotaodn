class KhoaHocDecorator < Draper::Decorator
  delegate_all

  def namdaotao_display
    namketthuc.to_date.year.to_i - nambatdau.to_date.year.to_i
  end
end
