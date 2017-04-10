class User < ApplicationRecord
	has_secure_password
	
	validates_presence_of :name, :email, :password_digest

	has_many :likes
	has_many :products, through: :likes #liked products

	def admin?
		is_admin		
	end
end
