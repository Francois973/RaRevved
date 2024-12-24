class CarProduct < ApplicationRecord
  belongs_to :brand
  belongs_to :model
  belongs_to :body_type
end
