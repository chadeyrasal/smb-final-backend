class UserSerializer < ActiveModel::Serializer
  attributes :id, :fullname, :description, :created_at, :email
  has_many :bicycles
  has_many :trips
end
