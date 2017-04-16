class Khoa < ApplicationRecord
  self.table_name = "khoa"
  has_many :mon_hocs, class_name: MonHoc.name, dependent: :destroy
  has_many :chuong_trinh_dao_taos, class_name: ChuongTrinhDaoTao.name

  validates :tenkhoa, presence: true, length: {minimum: 5}
end
