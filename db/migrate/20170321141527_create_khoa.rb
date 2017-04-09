class CreateKhoa < ActiveRecord::Migration[5.0]
  def change
    create_table :khoa do |t|
      t.string :tenkhoa

      t.timestamps
    end
  end
end
