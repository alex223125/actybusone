class Directions::DirectionCategory < ApplicationRecord

  validates :name, presence: true, uniqueness: true

  has_many :directions

end
