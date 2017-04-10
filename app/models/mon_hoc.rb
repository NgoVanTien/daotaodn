class MonHoc < ApplicationRecord
  self.table_name = "mon_hoc"
  belongs_to :loai_mon_hoc, class_name: LoaiMonHoc.name, dependent: :destroy
  belongs_to :khoa, class_name: Khoa.name, dependent: :destroy

  validates :khoa_id, presence: true
  validates :loai_mon_hoc_id, presence: true
  validates :mamonhoc, presence: true, length: {maximum: 20}
  validates :tenmonhoc, presence: true, length: {minimum: 5}
  validates :cachviettat, presence: true, length: {maximum: 20}
end
