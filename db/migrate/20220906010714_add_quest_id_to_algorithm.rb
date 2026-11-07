class AddQuestIdToAlgorithm < ActiveRecord::Migration[7.0]
  def change
    add_column :algorithms, :quest_id, :integer
  end
end
