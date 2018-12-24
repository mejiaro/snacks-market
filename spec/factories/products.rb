FactoryBot.define do
	factory :product do
		name { Faker::Commerce.product_name}
		price { Faker::Commerce.price }
		stock { Faker::Number.between(0, 10) }
	end
end
