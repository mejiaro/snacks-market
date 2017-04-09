class Product < ApplicationRecord
	audited only: :price, on: [:update]

	validates :name, :stock, presence: true
	validates :price, numericality: { greater_than_or_equal_to: 0 },
                    presence: true

    has_many :likes

    def like_count
    	likes.count
    end

end
