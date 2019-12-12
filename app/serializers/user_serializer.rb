class UserSerializer < ActiveModel::Serializer
  attributes :id, :fullname, :created_at
  has_many :bicycles
end
