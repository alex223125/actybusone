class AddRecommendedAmountOfTimeFromToQuests < ActiveRecord::Migration[7.0]
  def change
    add_column :quests, :recommended_amount_of_time_from, :integer
  end
end
