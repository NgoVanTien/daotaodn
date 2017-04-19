class CreateKhoaHoc < ActiveRecord::Migration[5.0]
  def change
    create_table :khoa_hoc do |t|
      t.string :tenkhoahoc
      t.date :nambatdau
      t.date :namketthuc

      t.timestamps
    end
  end
end
