class TripSerializer < ActiveModel::Serializer
  attributes :id, :start_date, :end_date, :review, :rating, :bicycle, :renter 
  belongs_to :bicycle
  belongs_to :renter, class_name: "User"
end
