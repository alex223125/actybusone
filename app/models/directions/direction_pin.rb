class Directions::DirectionPin < ApplicationRecord
  belongs_to :direction, class_name: "Directions::Direction"
  belongs_to :pin, class_name: "Pin"
end
