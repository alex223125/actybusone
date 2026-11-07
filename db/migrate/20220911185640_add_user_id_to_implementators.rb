class AddUserIdToImplementators < ActiveRecord::Migration[7.0]
  def change
    add_column :implementators, :user_id, :integer
  end
end
