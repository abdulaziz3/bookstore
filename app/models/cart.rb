class Cart < ActiveRecord::Base
  has_many :Lineitems

  def add_book(book_id)
    current_item = Lineitems.find_by_book_id(book_id)
    if current_item
      current_item.quantity +=1
    else
      current_item = Lineitems.new(book_id: book_id)
      current_item.quantity = 1
    end
    current_item
  end
  
end
