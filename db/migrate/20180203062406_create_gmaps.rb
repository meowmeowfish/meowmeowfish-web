class CreateGmaps < ActiveRecord::Migration[5.1]
  def change
    create_table :gmaps do |t|
      t.float :latitude
      t.float :longitude
      t.string :address

      t.timestamps
    end
  end
end
