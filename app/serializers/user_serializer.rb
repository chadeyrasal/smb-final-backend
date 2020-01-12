class UserSerializer < ActiveModel::Serializer
  attributes :id, :fullname, :description, :created_at, :email
  has_many :bicycles, foreign_key: :owner_id
  has_many :reservations, class_name: "Trip", foreign_key: :renter_id
end
