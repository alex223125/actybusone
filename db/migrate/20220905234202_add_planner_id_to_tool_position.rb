class AddPlannerIdToToolPosition < ActiveRecord::Migration[7.0]
  def change
    add_column :tool_positions, :planner_id, :integer
  end
end
