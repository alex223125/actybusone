class QuestsPlanners::ToolPosition < ApplicationRecord

  belongs_to :user, class_name: "User", optional: true

  belongs_to :planner, class_name: "QuestsPlanners::Planner"

end
