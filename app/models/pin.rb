class Pin < ApplicationRecord

  acts_as_votable

  belongs_to :user
  belongs_to :content_category, :class_name => "PinContentCategory", foreign_key: :pin_content_category_id

  has_many :directions, class_name: "Directions::Direction"

  has_many :direction_pins, class_name: "Directions::DirectionPin", dependent: :destroy
  has_many :directions, through: :direction_pins

  has_attached_file :image, styles: { medium: "300x300>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

end
