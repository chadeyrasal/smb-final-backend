class NeighbourhoodSerializer < ActiveModel::Serializer
  attributes :id, :name, :city
  belongs_to :city
  has_many :bicycles
end
