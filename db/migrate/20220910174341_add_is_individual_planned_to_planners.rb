class AddIsIndividualPlannedToPlanners < ActiveRecord::Migration[7.0]
  def change
    add_column :planners, :is_individual_planned, :boolean
  end
end
