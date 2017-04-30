class CreateSinhVien < ActiveRecord::Migration[5.0]
  def change
    create_table :sinh_vien do |t|
      t.string :tensinhvien
      t.date :namsinh
      t.integer :lop_id

      t.timestamps
    end
    add_foreign_key :sinh_vien, :lop, column: :lop_id
  end
end
