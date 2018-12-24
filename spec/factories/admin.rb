FactoryBot.define do 
	factory :admin, class: User do
    	name { Faker::Name.name }
		email { 'admin@snacks.io' }
		password 'snaxroxs'
		is_admin true
  end
end