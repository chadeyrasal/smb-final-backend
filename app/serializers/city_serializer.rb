class CitySerializer < ActiveModel::Serializer
  attributes :id, :name, :country
  belongs_to :country
  has_many :neighbourhoods
end
