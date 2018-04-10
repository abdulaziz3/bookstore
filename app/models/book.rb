class Book < ActiveRecord::Base
  has_many :lineitems

  has_many :reviews

  def average_stars
    reviews.average(:stars)
  end

  def self.search(query)
		where(" book_name LIKE ?", "%#{query}%")
	end

end
