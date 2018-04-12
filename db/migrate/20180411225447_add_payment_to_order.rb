class AddPaymentToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :payment, :string
  end
end
