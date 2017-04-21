class KhoaHoc < ApplicationRecord
  self.table_name = "khoa_hoc"

  has_many :chuong_trinh_dao_tao, class_name: ChuongTrinhDaoTao.name

  validates :tenkhoahoc, presence: true
  validates :nambatdau, presence: true
  validates :namketthuc, presence: true

end
