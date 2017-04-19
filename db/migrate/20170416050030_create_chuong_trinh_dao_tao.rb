class CreateChuongTrinhDaoTao < ActiveRecord::Migration[5.0]
  def change
    create_table :chuong_trinh_dao_tao do |t|
      t.string :mactdt
      t.string :tenctdt
      t.integer :sotinchi
      t.integer :bac_dao_tao_id
      t.integer :khoa_hoc_id
      t.integer :khoa_id

      t.timestamps
    end
    add_foreign_key :chuong_trinh_dao_tao, :bac_dao_tao, column: :bac_dao_tao_id
    add_foreign_key :chuong_trinh_dao_tao, :khoa_hoc, column: :khoa_hoc_id
    add_foreign_key :chuong_trinh_dao_tao, :khoa, column: :khoa_id
  end
end
