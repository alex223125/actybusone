class AddDifficultyIdToQuests < ActiveRecord::Migration[7.0]
  def change
    add_column :quests, :difficulty_id, :integer
  end
end
