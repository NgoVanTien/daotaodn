class ChiTietDaoTao < ApplicationRecord
  self.table_name = "chi_tiet_dao_tao"
  belongs_to :mon_hoc, class_name: MonHoc.name
  belongs_to :chuong_trinh_dao_tao, class_name: ChuongTrinhDaoTao.name
end
