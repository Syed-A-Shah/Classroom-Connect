class AddUserNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, unique: true
  end
end
