class Bicycle < ApplicationRecord

  belongs_to :neighbourhood
  belongs_to :city
  belongs_to :country
  belongs_to :owner, class_name: "User"
  has_many :trips
  has_many :renters, class_name: "User", through: :trips

  validates :bicycle_type, :size, :colour, :title, :description, :price, presence: true

end
