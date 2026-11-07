class Quests::Step < ApplicationRecord

  belongs_to :quest, class_name: "Quests::Quest"

  belongs_to :algorithm, optional: true
  acts_as_list scope: :algorithm

end
