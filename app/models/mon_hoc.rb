class MonHoc < ApplicationRecord
  self.table_name = "mon_hoc"
  belongs_to :loai_mon_hoc, class_name: LoaiMonHoc.name
  belongs_to :khoa, class_name: Khoa.name
  has_many :chi_tiet_dao_taos, class_name: ChiTietDaoTao.name

  validates :khoa_id, presence: true
  validates :loai_mon_hoc_id, presence: true
  validates :mamonhoc, presence: true, length: {maximum: 20}
  validates :tenmonhoc, presence: true, length: {minimum: 5}
  validates :cachviettat, presence: true, length: {maximum: 20}
  validates :hesotinchi, presence: true

  scope :mon_thuoc_khoa, -> id_ctdt do
    where(khoa_id: ChuongTrinhDaoTao.where(id: id_ctdt).first.khoa_id)
  end
end
