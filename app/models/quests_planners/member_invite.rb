class QuestsPlanners::MemberInvite < ApplicationRecord
  belongs_to :user, class_name: "User"

  belongs_to :planner, class_name: "QuestsPlanners::Planner"


  def set_expiration_date(active_days)
    binding.pry
    self.expiration_date = Date.today + active_days.to_i.days
    self.is_active = true
  end

end
