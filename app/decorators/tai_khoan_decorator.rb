class TaiKhoanDecorator < Draper::Decorator
  delegate_all

  def quyen_display
    {
      "Quản Lý": "admin",
      "Giảng Viên": "giangvien",
      "Sinh Viên": "sinhvien",
      "Giảng Vụ": "giangvu",
      "Văn Phòng": "vanphong"
    }
  end

end
