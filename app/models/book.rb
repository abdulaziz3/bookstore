class Book < ActiveRecord::Base
  has_many :lineitems
  has_many :reviews

  validates :price, presence: true
  
  def average_stars
    reviews.average(:stars)
  end

  def self.search(query)
		where(" title LIKE ?", "%#{query}%")
	end

  CATEGORY = ["business", "food", "science", "fiction", "story"]

end
