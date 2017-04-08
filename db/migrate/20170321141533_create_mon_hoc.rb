class CreateMonHoc < ActiveRecord::Migration[5.0]
  def change
    create_table :mon_hoc do |t|
      t.string :mamonhoc
      t.string :tenmonhoc
      t.string :cachviettat
      t.integer :hesotinchi
      t.integer :loai_mon_hoc_id
      t.integer :khoa_id

      t.timestamps
    end
    add_foreign_key :mon_hoc, :loai_mon_hoc, column: :loai_mon_hoc_id
    add_foreign_key :mon_hoc, :khoa, column: :khoa_id
  end
end
