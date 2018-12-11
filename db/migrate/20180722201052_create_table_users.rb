class CreateTableUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :table_users do |t|
      t.string :first_name
      t.string :last_name
      t.string :twitch_access_token

      t.timestamps
    end
  end
end
