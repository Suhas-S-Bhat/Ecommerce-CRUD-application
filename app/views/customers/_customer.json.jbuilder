json.extract! customer, :id, :name, :phone, :email, :address, :created_at, :updated_at
json.url customer_url(customer, format: :json)
