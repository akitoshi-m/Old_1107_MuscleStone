class RemoveColumnsFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :user_id, :string
    remove_column :users, :bmi, :string
  end
end
