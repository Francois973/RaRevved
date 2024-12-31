require 'faker'
require 'awesome_print'
# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

200.times do |i|
  cy =
    City.create!(
      city_name: Faker::Address.city,
      latitude: Faker::Address.latitude,
      longitude: Faker::Address.longitude
    )

  ap "#{cy.city_name} ====>created"

  u =
    User.create!(
      email: Faker::Internet.email,
      password: 'testtesttesttest',
      city_id: cy.id
    )

  ap "#{u.email} ====>created"

  brand_name = Faker::Vehicle.manufacturer
  b = Brand.create!(brand_name:)
  ap "#{b.brand_name} ====>created"

  m = Model.create!(model_designation: Faker::Vehicle.model)
  ap "#{m.model_designation} ====>created"

  b = BodyType.create!(body_type_name: Faker::Vehicle.car_type)
  ap "#{b.body_type_name} ====>created"

  c =
    CarProduct.create!(
      brand_id: b.id,
      model_id: m.id,
      body_type_id: b.id,
      year: Faker::Date.backward(days: 14),
      price: Faker::Commerce.price(range: 10_000..100_000, as_string: true),
      mileage: Faker::Vehicle.kilometrage,
      color: Faker::Color.color_name
    )
  ap "#{c.brand.brand_name} ====>created"

  ad =
    Advertisement.create!(
      car_product_id: c.id,
      user_id: u.id,
      title: Faker::Alphanumeric.alpha(number: 10),
      body: Faker::Alphanumeric.alpha(number: 100),
      is_active: true,
      is_bid_allowed: false
    )

  ap "#{ad.title} ====>created"
  ap "====>#{i + 1}"
end
