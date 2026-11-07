class AddAlgorithmIdToSteps < ActiveRecord::Migration[7.0]
  def change
    add_column :steps, :algorithm_id, :integer
  end
end
