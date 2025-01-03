class Advertisement < ApplicationRecord
  belongs_to :car_product
  belongs_to :user

  scope :active, -> { where(is_active: true) }
end
