class Bid < ApplicationRecord
  belongs_to :advertisement
  belongs_to :user
end
