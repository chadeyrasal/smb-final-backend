class City < ApplicationRecord

  belongs_to :country
  has_many :neighbourhoods
  has_many :bicycles
  has_many :bicycles, through: :neighbourhoods

end
