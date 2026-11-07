class Directions::Direction < ApplicationRecord

  has_closure_tree

  validates :direction_category_id, presence: true
  belongs_to :direction_category

  has_many :direction_pins, dependent: :destroy
  has_many :pins, class_name: "Pin", through: :direction_pins

end
