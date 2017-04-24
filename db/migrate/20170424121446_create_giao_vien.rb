class CreateGiaoVien < ActiveRecord::Migration[5.0]
  def change
    create_table :giao_vien do |t|
      t.string :tengiaovien
      t.date :namsinh
      t.integer :khoa_id

      t.timestamps
    end
    add_foreign_key :giao_vien, :khoa, column: :khoa_id
  end
end
