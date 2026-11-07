require 'rake'

namespace :quests_planners_member_invites do
  desc "Deactivates member invites by expiration date"
  task change_active_status_worker: :environment do
    binding.pry
    QuestsPlanners::MemberInvites::ChangeActiveStatusWorker.perform_async
  end
end

