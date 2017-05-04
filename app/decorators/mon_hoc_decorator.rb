class MonHocDecorator < Draper::Decorator
  delegate_all

  def monhoc_display
    {
      "Lý Thuyết Và Thục Hành": "lythuyet_thuchanh",
      "Lý Thuyết": "lythuyet",
      "Thực Hành": "thuchanh"
    }
  end

  def hesotinchi_display
    {
      "0.5": "0.5",
      "1": "1",
      "1.5": "1.5",
      "2": "2",
      "2.5": "2.5",
      "3": "3",
      "3.5": "3.5",
      "4": "4",
      "10": "10"
    }
  end

  def chuyenmon_show_display
    if loai == "lythuyet_thuchanh"
      "Lý Thuyết Và Thực Hành"
    elsif loai == "lythuyet"
      "Lý Thuyết"
    elsif loai == "thuchanh"
      "Thực Hành"
    end
  end

end
