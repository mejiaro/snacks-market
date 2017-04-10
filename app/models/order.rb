class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product

  validate :available_stock

  after_save :update_stock

  def available_stock
  	self.errors.add(:orders, "Product is out of stock") if product.stock < 1
  end

  def update_stock
  	product.reduce_stock(1)
  end
end
