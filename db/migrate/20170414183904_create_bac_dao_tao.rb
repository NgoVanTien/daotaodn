class CreateBacDaoTao < ActiveRecord::Migration[5.0]
  def change
    create_table :bac_dao_tao do |t|
      t.string :kyhieu
      t.string :tenbacdaotao

      t.timestamps
    end
  end
end
