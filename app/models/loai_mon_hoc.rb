class LoaiMonHoc < ApplicationRecord
  self.table_name = "loai_mon_hoc"
  has_many :mon_hocs, class_name: MonHoc.name, dependent: :destroy

  validates :ten, presence: true, length: {minimum: 5}
end
