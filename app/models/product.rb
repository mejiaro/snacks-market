class Product < ApplicationRecord
	audited only: :price, on: [:update]

	validates :name, :stock, presence: true
	validates :price, numericality: { greater_than_or_equal_to: 0 },
                    presence: true

    has_many :likes

    scope :likes, -> { left_joins(:likes).select('products.*, COUNT(*) AS likes_count').group("products.id").order("count(products.id) DESC") }

end
