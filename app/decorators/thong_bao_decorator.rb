class ThongBaoDecorator < Draper::Decorator
  delegate_all

  def thongbao_display
    {
      "Trang Chủ - Thông Báo": "trangchu_thongbao",
      "Trang Chủ - Sự Kiện": "trangchu_sukien",
      "Sinh Viên - Thông Báo": "sinhvien_thongbao",
      "Sinh Viên - Sự Kiện": "sinhvien_sukien",
      "Sinh Viên - Nhắc Nhở": "sinhvien_nhacnho",
      "Sinh Viên - Lịch Thi": "sinhvien_lichthi"
    }
  end

  def guiden_display
    {
      "Lớp Học Phần": "lop_hoc_phan",
      "Sinh Viên Khóa Mới": "sinh_vien_khoa_moi"
    }
  end
end
