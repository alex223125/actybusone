class Quests::Quest < ApplicationRecord

  belongs_to :user

  belongs_to :difficulty
  belongs_to :regularity

  has_many :planners, class_name: "QuestsPlanners::Planner"
  # many options of algorithms for a single quest
  has_many :algorithms, class_name: "Quests::Algorithm"
  has_many :steps, class_name: "Quests::Quest"


  def creator
    self.user
  end

end
