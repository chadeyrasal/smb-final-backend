class BicycleSerializer < ActiveModel::Serializer

  attributes :id, :bicycle_type, :size, :colour, :title, :description, :price, :neighbourhood, :city, :country, :owner

  belongs_to :owner, class_name: 'User'
  belongs_to :neighbourhood
  has_many :trips
  has_many :renters, class_name: 'User', through: :trips

end
