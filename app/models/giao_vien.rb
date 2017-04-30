class GiaoVien < ApplicationRecord
  self.table_name = "giao_vien"
  belongs_to :khoa, class_name: Khoa.name
  has_many :phan_mon, class_name: PhanMon.name
end
