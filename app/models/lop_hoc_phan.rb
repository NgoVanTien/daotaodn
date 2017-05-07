class LopHocPhan < ApplicationRecord
  self.table_name = "lop_hoc_phan"
  belongs_to :chuong_trinh_dao_tao, class_name: ChuongTrinhDaoTao.name

end
