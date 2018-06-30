FactoryBot.define do
  factory :user do
    email "laureen.burd@gmail.com"
    password "RegisterTest"
    first_name "Laureen"
    last_name "Burd"
    admin false
  end
end