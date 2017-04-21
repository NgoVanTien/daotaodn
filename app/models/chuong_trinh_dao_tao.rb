class ChuongTrinhDaoTao < ApplicationRecord
  self.table_name = "chuong_trinh_dao_tao"

  belongs_to :bac_dao_tao, class_name: BacDaoTao.name
  belongs_to :khoa_hoc, class_name: KhoaHoc.name
  belongs_to :khoa, class_name: Khoa.name
  has_many :chi_tiet_dao_taos, class_name: ChiTietDaoTao.name

  validates :mactdt, presence: true
  validates :tenctdt, presence: true
  validates :sotinchi, presence: true
  validates :bac_dao_tao_id, presence: true
  validates :khoa_hoc_id, presence: true
  validates :khoa_id, presence: true
end
