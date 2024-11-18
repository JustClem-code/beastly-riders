class Booking < ApplicationRecord
  belongs_to :beast
  belongs_to :user
end
