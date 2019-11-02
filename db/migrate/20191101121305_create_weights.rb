class CreateWeights < ActiveRecord::Migration[5.2]
  def change
    create_table :weights do |t|
      t.integer :weight
      t.date :measure_date
      t.integer :user_id

      t.timestamps
    end
  end
end
