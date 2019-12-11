class Bicycle < ApplicationRecord

  belongs_to :neighbourhood
  belongs_to :owner, class_name: "User"
  has_many :trips
  has_many :renters, class_name: "User", through: :trips

  validates :bicycle_type, :colour, :title, :description, :price, presence: true
  validates_inclusion_of :size, in: ["Small", "Medium", "Large"]

end
