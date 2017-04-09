module ApplicationHelper
  def current_sinh_vien? current_tai_khoan
    current_tai_khoan.role == "sinhvien"
  end
end
