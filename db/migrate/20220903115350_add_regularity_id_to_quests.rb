class AddRegularityIdToQuests < ActiveRecord::Migration[7.0]
  def change
    add_column :quests, :regularity_id, :integer
  end
end
