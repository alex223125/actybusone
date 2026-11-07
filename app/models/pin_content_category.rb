class PinContentCategory < ApplicationRecord

  validates :title, presence: true, uniqueness: true

  has_many :pins

end
