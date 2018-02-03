json.extract! gmap, :id, :latitude, :longitude, :address, :created_at, :updated_at
json.url gmap_url(gmap, format: :json)
