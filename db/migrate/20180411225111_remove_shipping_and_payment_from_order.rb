class RemoveShippingAndPaymentFromOrder < ActiveRecord::Migration
  def change
    remove_column :orders, :shipping_and_payment_id, :integer
  end
end
