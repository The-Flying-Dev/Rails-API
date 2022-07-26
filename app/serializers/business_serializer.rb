class BusinessSerializer < ActiveModel::Serializer
  attributes :id, :title, :location, :number_of_employees, :service
end
