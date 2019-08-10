class AddUserIdToHomeworks < ActiveRecord::Migration[5.2]
  def change
    add_column :homeworks, :user_id, :integer
  end
end
