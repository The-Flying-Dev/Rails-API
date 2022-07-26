class Business < ApplicationRecord
  #association
  belongs_to :owner

  #validations
  validates :title, :location, :owner_id, :number_of_employees, :service, presence: true
end
