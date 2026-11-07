class AddPlannerIdToMemberPosition < ActiveRecord::Migration[7.0]
  def change
    add_column :member_positions, :planner_id, :integer
  end
end
