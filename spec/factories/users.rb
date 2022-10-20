FactoryBot.define do
  factory :user do
    nickname              {Faker::Name.initials(number: 5)}
    email                 {Faker::Internet.free_email}
    password              {'abc1234'}
    password_confirmation {password}
    profile               {'よろしくお願いします'}
    birthday              {20001113}
  end
end