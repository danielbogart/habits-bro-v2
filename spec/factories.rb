FactoryGirl.define do
	factory :user do
		email "danny.bogart@gmail.com"
		password "asdfasdf"
	end	

	factory :daily do
		name "Eat ice cream"
		user 
	end		
end