class CitySerializer < ActiveModel::Serializer

  attributes :id, :name, :country, :likes

  belongs_to :country
  has_many :neighbourhoods
  has_many :bicycles

end
