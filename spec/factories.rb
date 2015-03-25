FactoryGirl.define do

  factory(:place) do
    city('Unicorndom')
    state('Inebriation')
    country('Zanadoo')
  end

  factory(:accommodation) do
    description('sample description, great clean place!')
    type('house')
    guests(3)
    price(250)
  end

end
