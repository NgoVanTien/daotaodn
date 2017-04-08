class Khoa < ApplicationRecord
  self.table_name = "khoa"
  has_many :mon_hocs, class_name: MonHoc.name 
end
