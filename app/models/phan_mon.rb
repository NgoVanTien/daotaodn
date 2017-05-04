class PhanMon < ApplicationRecord
  self.table_name = "phan_mon"
  belongs_to :chuong_trinh_dao_tao, class_name: ChuongTrinhDaoTao.name
  belongs_to :giao_vien, class_name: GiaoVien.name
  belongs_to :mon_hoc, class_name: MonHoc.name
  belongs_to :lop, class_name: Lop.name
  has_many :lich_giangs, class_name: LichGiang.name 

  scope :mon_trongthoigian, -> id_gv do
    ransack(giao_vien_id_eq: id_gv, ngaybatdau_lteq: Time.zone.now.to_date, ngayketthuc_gteq: Time.zone.now.to_date).result
  end
end
