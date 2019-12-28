class Bicycle < ApplicationRecord

  belongs_to :neighbourhood
  belongs_to :owner, class_name: "User"
  has_many :trips
  has_many :renters, class_name: "User", through: :trips

  validates :bicycle_type, :colour, :title, :description, :price, presence: true
  validates_inclusion_of :size, in: ["Small", "Medium", "Large"]

  def self.latest
    order(created_at: :desc).limit(5)
  end

  def self.popular
    joins(:trips).group(:bicycle_id).count.sort_by{|_key, value| value}.reverse.first(5)
  end

end
