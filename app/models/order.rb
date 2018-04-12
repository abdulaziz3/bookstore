class Order < ActiveRecord::Base
  belongs_to :user
  has_many :lineitems

  def add_lineitems_from_cart(cart)
		cart.lineitems.each do |item|
			item.cart_id = nil
			lineitems << item
		end
	end

  def self.total(order)
    order.lineitems.inject(0) {|sum, p | sum + p.book.price}
  end
  
  PAYMENT = ["Visa", "master card", "cash upon delivery", "american express", "pay pal"]
end
