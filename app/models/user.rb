class User < ApplicationRecord

  has_many :bicycles, foreign_key: :owner_id
  has_many :trips, through: :bicycles
  has_many :reservations, class_name: "Trip", foreign_key: :renter_id

  has_secure_password

end
