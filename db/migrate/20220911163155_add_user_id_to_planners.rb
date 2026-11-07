class AddUserIdToPlanners < ActiveRecord::Migration[7.0]
  def change
    add_column :planners, :user_id, :integer
  end
end
