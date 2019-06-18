json.extract! orders_product, :id, :order_id, :product_id, :amount, :created_at, :updated_at
json.url orders_product_url(orders_product, format: :json)
