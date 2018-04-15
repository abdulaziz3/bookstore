class User < ActiveRecord::Base
  has_secure_password
  has_many :reviews
  has_many :orders

  before_save {self.email = email.downcase}

	VALID_EMAIL_VAL = /\A[\w+\-.]+@[A-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true , length: {maximum: 105},
		 uniqueness: {case_sensitvity: false},
		format: { with: VALID_EMAIL_VAL }
end

class UserDecorator < Draper::Decorator
  delegate_all

  def full_name
    "#{object.name} #{object.l_name}"
  end
end
