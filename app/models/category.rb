class Category < ActiveRecord::Base
  has_many :books, dependent: :destroy

  validates :name, presence: true
	validates :name, uniqueness: true

end
