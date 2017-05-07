class CreateLopHocPhan < ActiveRecord::Migration[5.0]
  def change
    create_table :lop_hoc_phan do |t|
      t.string :ma_lhp
      t.string :tenlop
      t.integer :chuong_trinh_dao_tao_id

      t.timestamps
    end
    add_foreign_key :lop_hoc_phan, :chuong_trinh_dao_tao, column: :chuong_trinh_dao_tao_id
  end
end
