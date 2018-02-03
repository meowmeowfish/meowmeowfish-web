class AddIndexColumnToGmaps < ActiveRecord::Migration[5.1]
  def change
  	add_column :gmaps, :index, :integer
  end
end
