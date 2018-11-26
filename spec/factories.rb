FactoryBot.define do

  factory :user do
    username "Joe"
    password "password"
    confirmed_at Date.today
  end
end
