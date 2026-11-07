class AddRecommendedAmountOfMembersFromToQuests < ActiveRecord::Migration[7.0]
  def change
    add_column :quests, :recommended_amount_of_members_from, :integer
  end
end
