FactoryBot.define do
  factory :user, class: User do
    sequence :name do |n|
      "user#{n}"
    end
    sequence :email do |n|
      "user#{n}@example.com"
    end
    password '123456'
    password_confirmation '123456'
  end

  factory :micropost, class: Micropost do
    content "Lorem Ipsim DOlor sit amet"
  end
end
