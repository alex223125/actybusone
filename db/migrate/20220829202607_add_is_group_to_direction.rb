class AddIsGroupToDirection < ActiveRecord::Migration[7.0]
  def change
    add_column :directions, :is_group, :boolean
  end
end
