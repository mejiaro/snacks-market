class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :validatable, :confirmable
	
	validates_presence_of :name, :email

	has_many :likes
	has_many :products, through: :likes #liked products

	has_many :orders

	def admin?
		is_admin		
	end

  def send_devise_notification(notification, *args)
    ActivationMailerJob.perform_now(self.id)
  end
end
