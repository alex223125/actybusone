class AddParentIdToDirection < ActiveRecord::Migration[7.0]
  def change
    add_column :directions, :parent_id, :integer
  end
end
