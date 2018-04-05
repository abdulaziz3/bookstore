json.extract! shipping_and_payment, :id, :payment_method, :card_number, :ex_date, :cvv, :shipping_address, :phone, :name, :created_at, :updated_at
json.url shipping_and_payment_url(shipping_and_payment, format: :json)
