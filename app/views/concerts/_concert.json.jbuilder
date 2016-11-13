json.extract! concert, :id, :artist, :venue, :city, :date, :description, :price, :done_at, :created_at, :updated_at
json.url concert_url(concert, format: :json)