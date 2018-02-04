class AddColumnStatusToGmaps < ActiveRecord::Migration[5.1]
  def change
  	add_column :gmaps, :status, :integer
  end
end
