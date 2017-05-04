class CreatePhanMon < ActiveRecord::Migration[5.0]
  def change
    create_table :phan_mon do |t|
      t.integer :hocky
      t.integer :sotiet
      t.integer :giao_vien_id
      t.integer :chuong_trinh_dao_tao_id
      t.integer :mon_hoc_id
      t.integer :lop_id
      t.integer :thuchanh
      t.date :ngaybatdau
      t.date :ngayketthuc

      t.timestamps
    end
  end
end
