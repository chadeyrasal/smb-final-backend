class NeighbourhoodSerializer < ActiveModel::Serializer
  attributes :id, :name, :city
  belongs_to :city
end
