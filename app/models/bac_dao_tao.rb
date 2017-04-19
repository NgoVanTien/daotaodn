class BacDaoTao < ApplicationRecord
  self.table_name = "bac_dao_tao"

  has_many :chuong_trinh_dao_tao, class_name: ChuongTrinhDaoTao.name

  validates :kyhieu, presence: true
  validates :tenbacdaotao, presence: true
end
