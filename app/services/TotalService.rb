require 'BaseService'
require 'CartIterator'
class TotalService < BaseService

  def initialize(cart)
    self.cart = cart
  end

  def call
    total = 0
    cartIterator = CartIterator.new(cart.lineitems)
    while cartIterator.has_next?
      item = cartIterator.next_item
      total = total + (item.book.price * item.quantity)
    end
    # cart.lineitems.each do |item|
    #   total = total + (item.book.price * item.quantity)
    # end
    total
  end

  private

  attr_accessor :cart
end
