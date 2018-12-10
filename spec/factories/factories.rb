FactoryBot.define do
  factory :admin_user, class: User do
    sequence :name do |n|
      "admin#{n}"
    end
    sequence :email do |n|
      "admin#{n}@example.com"
    end
    password '123456'
    password_confirmation '123456'
    admin true
  end

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

end
