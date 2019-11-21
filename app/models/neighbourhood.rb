class Neighbourhood < ApplicationRecord

  belongs_to :city
  has_many :bicycles
  has_many :trips, through: :bicycles

end
