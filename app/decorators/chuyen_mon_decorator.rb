class ChuyenMonDecorator < Draper::Decorator
  delegate_all

  def chuyenmon_display
    {
      "Lý Thuyết Và Thục Hành": "lythuyet_thuchanh",
      "Lý Thuyết": "lythuyet",
      "Thực Hành": "thuchanh"
    }
  end

  def chuyenmon_show_display
    if chuyenmon == "lythuyet_thuchanh"
      "Lý Thuyết Và Thực Hành"
    elsif chuyenmon == "lythuyet"
      "Lý Thuyết"
    elsif chuyenmon == "thuchanh"
      "Thực Hành"
    end
  end

end
