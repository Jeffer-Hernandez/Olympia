class RemoveNameFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :name
    remove_column :users, :age
    remove_column :users, :height
    remove_column :users, :weight
  end
end
