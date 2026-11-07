module Services
  module QuestsPlanners
    module MemberInvites
      class Create

        attr_reader :member_invite

        # > #<ActionController::Parameters {"authenticity_token"=>"
        #   # 0FU7tcGH9yX-WQd7ZoAl3nkwiLThCxTSj5hKfZ2EO7xBEAeDvOucLd5WJl8wqoSVIlBFy8gj_es8YyK5VlS2mw",
        #   # "quests_planners_member_invite"=>{"planner_id"=>"14", "user_id"=>"2", "amount_of_days"=>"6"},
        #   # "commit"=>"Create Member invite", "controller"=>"quest_planner/member_invites", "action"=>"create"} permitted: false>

        def initialize(planner_id, user_id, amount_of_days)
          binding.pry
          @planner_id = planner_id
          @user_id = user_id
          @amount_of_days = amount_of_days
        end

        def call
          binding.pry
          create

          binding.pry
          set_expiration_date

          binding.pry
          @member_invite.save! if @member_invite.present?
        rescue ActiveRecord::ActiveRecordError=> e

          binding.pry
          @member_invite.errors.add(:base, e)
          false
        end

        private

        def create
          binding.pry
          @member_invite = ::QuestsPlanners::MemberInvite.new(user_id: @user_id,
                                                            planner_id: @planner_id)
        end

        def set_expiration_date
          binding.pry
          @member_invite.set_expiration_date(@amount_of_days)
        end

      end
    end
  end
end