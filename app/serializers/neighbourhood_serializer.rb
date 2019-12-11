class NeighbourhoodSerializer < ActiveModel::Serializer
  attributes :id, :name, :city_id
  belongs_to :city
end
