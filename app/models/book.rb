class Book < ActiveRecord::Base
  has_many :lineitems
  has_many :reviews

  belongs_to :category

  validates :price, presence: true
  validates :title, presence: true

  def average_stars
    reviews.average(:stars)
  end

  def self.search(query)
		where(" title LIKE ?", "%#{query}%")
	end

  def apply_discount(book, discount)
		if !book.nil?
      book.price = book.price - book.price * discount / 100
		end
	end

end
