class CreateLop < ActiveRecord::Migration[5.0]
  def change
    create_table :lop do |t|
      t.string :tenlop
      t.integer :chuong_trinh_dao_tao_id

      t.timestamps
    end
    add_foreign_key :lop, :chuong_trinh_dao_tao, column: :chuong_trinh_dao_tao_id
  end
end
