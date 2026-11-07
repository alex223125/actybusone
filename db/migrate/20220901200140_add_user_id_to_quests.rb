class AddUserIdToQuests < ActiveRecord::Migration[7.0]
  def change
    add_column :quests, :user_id, :integer
  end
end
