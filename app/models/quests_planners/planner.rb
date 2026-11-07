class QuestsPlanners::Planner < ApplicationRecord

  belongs_to :quest, class_name: "Quests::Quest"
  belongs_to :user

  has_many :member_positions
  has_many :tool_positions
  has_many :member_invites


end
