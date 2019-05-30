class CreateMasterOneMds < ActiveRecord::Migration[5.2]
  def change
    create_table :master_one_mds do |t|
      t.references :master_one_lg, foreign_key: true
      t.string :name, null: false

      t.timestamps

      t.index %i(master_one_lg_id name), unique: true
    end
  end
end
