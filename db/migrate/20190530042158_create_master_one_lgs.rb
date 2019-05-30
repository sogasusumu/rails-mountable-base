class CreateMasterOneLgs < ActiveRecord::Migration[5.2]
  def change
    create_table :master_one_lgs do |t|
      t.string :name, null: false

      t.timestamps

      t.index :name, unique: true
    end
  end
end
