class AddColumnsToChart < ActiveRecord::Migration[5.2]
  def change
    add_column :charts, :date, :date
  end
end
