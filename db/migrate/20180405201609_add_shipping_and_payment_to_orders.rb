class AddShippingAndPaymentToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :shipping_and_payment_id, :integer
  end
end
