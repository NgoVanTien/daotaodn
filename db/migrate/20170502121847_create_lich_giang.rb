class CreateLichGiang < ActiveRecord::Migration[5.0]
  def change
    create_table :lich_giang do |t|
      t.date :ngayday
      t.string :phonghoc
      t.integer :tietbatday
      t.integer :tietketthuc
      t.text :noidungday
      t.integer :danhgia
      t.integer :phan_mon_id

      t.timestamps
    end
    add_foreign_key :lich_giang, :phan_mon, column: :phan_mon_id
  end
end
