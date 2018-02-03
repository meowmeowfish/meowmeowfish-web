class AddColumnShipdetectedToGmaps < ActiveRecord::Migration[5.1]
  def change
  	add_column :gmaps, :ship_detected, :boolean
  end
end
