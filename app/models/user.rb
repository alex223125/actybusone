class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :pins
  has_many :quests, class_name: "Quests::Quest"
  has_many :planners, class_name: "QuestsPlanners::Planner"
  has_many :member_invites, class_name: "QuestsPlanners::MemberInvite"

  has_many :implementators, class_name: "QuestsImplementator::Implementator"

end
