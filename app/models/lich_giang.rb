class LichGiang < ApplicationRecord
  self.table_name = "lich_giang"
  belongs_to :phan_mon, class_name: PhanMon.name

end
