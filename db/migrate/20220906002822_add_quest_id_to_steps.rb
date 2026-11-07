class AddQuestIdToSteps < ActiveRecord::Migration[7.0]
  def change
    add_column :steps, :quest_id, :integer
  end
end
