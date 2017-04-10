class Product < ApplicationRecord
	audited only: :price, on: [:update]

	validates :name, :stock, presence: true
	validates :price, numericality: { greater_than_or_equal_to: 0 },
                    presence: true

    has_many :likes

    has_many :orders

    scope :order_by_likes, -> { left_joins(:likes).select('products.*, COUNT(*) AS likes_count').group("products.id").order("count(products.id) DESC") }

    scope :order_by_names, -> { order(:name) }

    scope :starts_with, -> (name) { where("lower(name) like ?", "#{name.downcase}%")}

end
