require 'faker'
# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

200.times do
  brand_name = Faker::Vehicle.manufacturer
  b = Brand.create!(brand_name:)

  m = Model.create!(model_designation: Faker::Vehicle.model)
  b = BodyType.create!(body_type_name: Faker::Vehicle.car_type)

  CarProduct.create!(
    brand_id: b.id,
    model_id: m.id,
    body_type_id: b.id,
    year: Faker::Date.backward(days: 14),
    price: Faker::Commerce.price(range: 10_000..100_000, as_string: true),
    mileage: Faker::Vehicle.kilometrage,
    color: Faker::Color.color_name
  )
end
