class Product < ApplicationRecord
    audited only: :price, on: [:update]

    validates :name, :stock, presence: true
    validates :price, numericality: { greater_than_or_equal_to: 0 },
                    presence: true

    has_many :likes, :dependent => :destroy

    has_many :orders

    scope :order_by_likes, -> { joins(:likes).select('products.*, COUNT(products.id) AS likes_count').group("products.id").order("count(products.id) DESC") }

    scope :order_by_names, -> { order(:name) }

    scope :starts_with, -> (name) { where("lower(name) like ?", "#{name.downcase}%")}

    def reduce_stock(n)
        t = self.stock - n
        self.update_attributes(stock: t) 
    end

end
