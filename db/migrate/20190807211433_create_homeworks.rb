class Createhomeworks < ActiveRecord::Migration[5.2]
  def change
    create_table :homeworks do |t|
      t.string :caption

      t.timestamps
    end
  end
end
