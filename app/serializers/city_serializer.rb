class CitySerializer < ActiveModel::Serializer
  attributes :id, :name, :country
  belongs_to :country
end
