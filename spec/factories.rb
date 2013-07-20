FactoryGirl.define do
  factory :user do
    sequence(:name)  { |n| "Person #{n}" }
    sequence(:email) { |n| "person_#{n}@example.com" }
    sequence(:uid) { |n| "#{n}" }
    password "foobar"
    password_confirmation "foobar"

    factory :admin do
      admin true
    end

    factory :oauth do
    provider "twitter"
    uid "12345"
    sequence(:name) { |n| "Person_#{n}" }
    sequence(:email) { |n| "person_#{n}@example.com" }
    end
  

    factory :role do
      role 'staff'
    end
  end


  

  factory :micropost do
    content "Lorem ipsum"
    user
  end
end