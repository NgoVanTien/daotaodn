class CreateKhoas < ActiveRecord::Migration[5.0]
  def change
    create_table :khoas do |t|
      t.string :tenkhoa

      t.timestamps
    end
  end
end
