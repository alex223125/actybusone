class AddPlannerIdToMemberInvites < ActiveRecord::Migration[7.0]
  def change
    add_column :member_invites, :planner_id, :integer
  end
end
