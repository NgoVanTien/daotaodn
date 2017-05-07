class CreateThongBao < ActiveRecord::Migration[5.0]
  def change
    create_table :thong_bao do |t|
      t.string :tieu_de
      t.text :noi_dung_khai_quat
      t.mediumtext :noi_dung
      t.string :anh
      t.integer :loai_hien_thi
      t.date :ngay_thong_bao
      t.integer :gui_den
      t.integer :giao_vien_id

      t.timestamps
    end
    add_foreign_key :thong_bao, :giao_vien, column: :giao_vien_id
  end
end
