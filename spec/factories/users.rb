FactoryBot.define do
	factory :user do
		name { Faker::Name.name }
		email { 'hello@snacks.io' }
		password 'snaxroxs'
	end
end