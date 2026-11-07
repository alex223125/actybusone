class AddIsNoToolsRequiredToPlanners < ActiveRecord::Migration[7.0]
  def change
    add_column :planners, :is_no_tools_required, :boolean
  end
end
