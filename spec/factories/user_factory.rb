FactoryBot.define do
	sequence(:email) { |n| "user#{n}@example.com" }
	
  factory :user do
    email
    password "RegisterTest"
    first_name "Laureen"
    last_name "Burd"
    admin false
  end

  factory :admin, class: User do
	  email
	  password "qwertyuiop"
	  admin true
	  first_name "Admin"
	  last_name "User"
	end
end