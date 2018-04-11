class Book < ActiveRecord::Base
  has_many :lineitems

  has_many :reviews

  def average_stars
    reviews.average(:stars)
  end

  def self.search(query)
		where(" title LIKE ?", "%#{query}%")
	end

  CATEGORY = ["business", "food", "science", "fiction", "story"]

  def average_stars
    reviews.average(:stars)
  end
end
