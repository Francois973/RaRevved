class Advertisement < ApplicationRecord
  belongs_to :car_product
  belongs_to :user
end
