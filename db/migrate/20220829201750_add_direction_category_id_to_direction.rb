class AddDirectionCategoryIdToDirection < ActiveRecord::Migration[7.0]
  def change
    add_column :directions, :direction_category_id, :integer
  end
end
