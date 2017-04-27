class PhanMon < ApplicationRecord
  self.table_name = "phan_mon"
  belongs_to :chuong_trinh_dao_tao, class_name: ChuongTrinhDaoTao.name
  belongs_to :giao_vien, class_name: GiaoVien.name
  belongs_to :mon_hoc, class_name: MonHoc.name
  belongs_to :lop, class_name: Lop.name
end
