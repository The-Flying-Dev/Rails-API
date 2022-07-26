class OwnerSerializer < ActiveModel::Serializer
  attributes :id, :name, :bio, :education
  has_many :businesses
end
