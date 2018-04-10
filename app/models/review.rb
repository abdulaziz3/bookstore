class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :book

  validates_inclusion_of :stars, :in => (0..5)
end
