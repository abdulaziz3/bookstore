class User < ActiveRecord::Base
  has_secure_password
  before_save {self.email = email.downcase}

	VALID_EMAIL_VAL = /\A[\w+\-.]+@[A-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true , length: {maximum: 105},
		 uniqueness: {case_sensitvity: false},
		format: { with: VALID_EMAIL_VAL }
end
