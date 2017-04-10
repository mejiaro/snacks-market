class Product < ApplicationRecord
	audited only: :price, on: [:update]

	validates :name, :stock, presence: true
	validates :price, numericality: { greater_than_or_equal_to: 0 },
                    presence: true

    has_many :likes

    scope :likes_counts, -> { left_joins(:likes).group(:id).order('COUNT(product.id) DESC') }

end
