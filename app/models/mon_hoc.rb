class MonHoc < ApplicationRecord
  self.table_name = "mon_hoc"
  belongs_to :loai_mon_hoc, class_name: LoaiMonHoc.name
  belongs_to :khoa, class_name: Khoa.name
end
