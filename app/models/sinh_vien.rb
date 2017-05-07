class SinhVien < ApplicationRecord
  self.table_name = "sinh_vien"
  belongs_to :lop, class_name: Lop.name
  has_one :tai_khoan, class_name: TaiKhoan.name
end
