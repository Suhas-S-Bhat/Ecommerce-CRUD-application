json.extract! address, :id, :name, :phone, :address_line1, :address_line2, :city, :state, :country, :pin_code, :created_at, :updated_at
json.url address_url(address, format: :json)
