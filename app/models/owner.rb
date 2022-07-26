class Owner < ApplicationRecord
  #association
  has_many :businesses

  #validations
  validates :name, :bio, :education, presence: true
end
