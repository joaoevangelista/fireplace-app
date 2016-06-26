# frozen_string_literal: true
FactoryGirl.define do
  factory :user, class: User do
    name 'John Doe'
    password '123456'
    email 'john.doe@fireplace.com'
  end
end
