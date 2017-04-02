class CreateLoaiMonHocs < ActiveRecord::Migration[5.0]
  def change
    create_table :loai_mon_hocs do |t|
      t.string :ten

      t.timestamps
    end
  end
end
