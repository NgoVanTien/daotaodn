class ChuyenMon < ApplicationRecord
  self.table_name = "chuyen_mon"
  belongs_to :giao_vien, class_name: GiaoVien.name
  belongs_to :mon_hoc, class_name: MonHoc.name

  enum chuyenmon: {lythuyet_thuchanh: 0, lythuyet: 1, thuchanh:2}
end
