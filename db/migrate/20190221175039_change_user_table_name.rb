class ChangeUserTableName < ActiveRecord::Migration[5.2]
  def change
    rename_table :table_users, :users
  end
end
