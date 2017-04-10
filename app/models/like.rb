class Like < ApplicationRecord
  belongs_to :product
  belongs_to :user

  validates_uniqueness_of :product, :scope => :user, message: "has been liked."

  validates_presence_of :user_id, :product_id

end
