class CreateMonHocs < ActiveRecord::Migration[5.0]
  def change
    create_table :mon_hocs do |t|
      t.string :mamonhoc
      t.string :tenmonhoc
      t.string :cachviettat
      t.integer :hesotinchi
      t.references :loai_mon_hoc, foreign_key: true
      t.references :khoa, foreign_key: true

      t.timestamps
    end
  end
end
