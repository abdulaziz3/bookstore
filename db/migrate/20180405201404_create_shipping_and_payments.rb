class CreateShippingAndPayments < ActiveRecord::Migration
  def change
    create_table :shipping_and_payments do |t|
      t.string :payment_method
      t.integer :card_number
      t.date :ex_date
      t.integer :cvv
      t.string :shipping_address
      t.string :phone
      t.string :name

      t.timestamps null: false
    end
  end
end
