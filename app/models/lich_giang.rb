class LichGiang < ApplicationRecord
  self.table_name = "lich_giang"
  belongs_to :phan_mon, class_name: PhanMon.name

  enum danhgia: {qua_kem: 0, kem: 1, binh_thuong:2, tam_duoc:3, kha:4, tot:5, qua_tot:6}
end
