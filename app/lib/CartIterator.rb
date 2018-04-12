class CartIterator
  def initialize(cart)
    @cart = cart
    @index = 0
  end

  def has_next?
    p @cart
    @index < @cart.length
  end

  def item
    @cart[@index]
  end

  def next_item
    value = @cart[@index]
    @index += 1
    value
  end
end
