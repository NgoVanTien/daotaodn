class Admin::PhanMonDecorator < Draper::Decorator
  delegate_all

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end
  def chuyenmon_show_display
    binding.pry
    if loai == "lythuyet_thuchanh"
      "Lý Thuyết Và Thực Hành"
    elsif loai == "lythuyet"
      "Lý Thuyết"
    elsif loai == "thuchanh"
      "Thực Hành"
    end
  end

end
