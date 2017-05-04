class ThongBao < ApplicationRecord
  mount_uploader :anh, AnhUploader
  self.table_name = "thong_bao"

  enum type: [:tip1, :tip2, :tip3, :tip4, :tip5, :tip6]
  validates :anh, :tieu_de, :noi_dung, presence: true
end
