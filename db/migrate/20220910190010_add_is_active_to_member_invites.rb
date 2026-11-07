class AddIsActiveToMemberInvites < ActiveRecord::Migration[7.0]
  def change
    add_column :member_invites, :is_active, :boolean
  end
end
