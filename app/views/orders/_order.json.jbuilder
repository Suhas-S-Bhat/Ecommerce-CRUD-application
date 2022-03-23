json.extract! order, :id, :order_no, :date_of_order, :order_status, :billing_address, :shipping_address, :created_at, :updated_at
json.url order_url(order, format: :json)
