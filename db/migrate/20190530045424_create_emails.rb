class CreateEmails < ActiveRecord::Migration[5.2]
  def change
    create_table :emails do |t|
      t.references :account, foreign_key: true
      t.string :name, null: false

      t.timestamps

      t.index %i(acctount_id name), unique: true
    end
  end
end
