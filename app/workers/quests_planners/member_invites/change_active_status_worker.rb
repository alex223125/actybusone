module QuestsPlanners
  module MemberInvites
    class ChangeActiveStatusWorker
      include Sidekiq::Worker
      sidekiq_options retry: false

      def perform
        binding.pry
        find_all_inactive_invites

        binding.pry
        deactivate
      rescue ActiveRecord::ActiveRecordError=> e
        # log error
        binding.pry
        false
      end

      private

      def find_all_inactive_invites
        binding.pry
        @member_invites = QuestsPlanners::MemberInvite.where('expiration_date < ?', DateTime.now).where(is_active: true)
      end

      def deactivate
        binding.pry
        @member_invites.update_all(is_active: false)
      end

    end
  end
end
