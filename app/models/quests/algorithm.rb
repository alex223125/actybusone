class Quests::Algorithm < ApplicationRecord

  belongs_to :quest
  has_many :steps, -> { order(position: :asc) }


end
