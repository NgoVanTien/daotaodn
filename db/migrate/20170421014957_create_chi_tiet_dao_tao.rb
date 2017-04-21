class CreateChiTietDaoTao < ActiveRecord::Migration[5.0]
  def change
    create_table :chi_tiet_dao_tao do |t|
      t.integer :kyhoc
      t.integer :mon_hoc_id
      t.integer :chuong_trinh_dao_tao_id

      t.timestamps
    end
    add_foreign_key :chi_tiet_dao_tao, :mon_hoc, column: :mon_hoc_id
    add_foreign_key :chi_tiet_dao_tao, :chuong_trinh_dao_tao, column: :chuong_trinh_dao_tao_id
  end
end
