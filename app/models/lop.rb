class Lop < ApplicationRecord
  self.table_name = "lop"
  belongs_to :chuong_trinh_dao_tao, class_name: ChuongTrinhDaoTao.name
  has_many :phan_mon, class_name: PhanMon.name
  has_many :sinh_viens, class_name: SinhVien.name

end
