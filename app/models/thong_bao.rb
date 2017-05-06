class ThongBao < ApplicationRecord
  mount_uploader :anh, AnhUploader
  self.table_name = "thong_bao"

  enum loai_hien_thi: [:trangchu_thongbao, :trangchu_sukien, :sinhvien_thongbao, :sinhvien_sukien, :sinhvien_nhacnho, :sinhvien_lichthi]
  validates :anh, :tieu_de, :noi_dung, presence: true
end
