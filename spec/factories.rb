FactoryGirl.define do

  factory :user do
    sequence(:email) {|n| "test#{n}@example.com" }
    password('12345678')
  end

  factory(:place) do
    city('Unicorndom')
    state('Inebriation')
    country('Zanadoo')
  end

  factory(:accommodation) do
    name('Creampuff!')
    description('sample description, great clean place!')
    housing_type('house')
    guests(3)
    price(250)
  end

end
