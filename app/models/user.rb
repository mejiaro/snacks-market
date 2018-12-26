class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :validatable
	
	validates_presence_of :name, :email

	has_many :likes
	has_many :products, through: :likes #liked products

	has_many :orders

	def admin?
		is_admin		
	end
end
