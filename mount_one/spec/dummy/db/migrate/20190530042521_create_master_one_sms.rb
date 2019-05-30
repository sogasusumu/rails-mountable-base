class CreateMasterOneSms < ActiveRecord::Migration[5.2]
  def change
    create_table :master_one_sms do |t|
      t.references :master_one_md, foreign_key: true
      t.string :name, null: false

      t.timestamps

      t.index %i(master_one_md_id name), unique: true
    end
  end
end
