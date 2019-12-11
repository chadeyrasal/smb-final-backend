class NeighbourhoodSerializer < ActiveModel::Serializer
  attributes :id, :name
  belongs_to :city
end
