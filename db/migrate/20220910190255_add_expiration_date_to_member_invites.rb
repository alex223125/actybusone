class AddExpirationDateToMemberInvites < ActiveRecord::Migration[7.0]
  def change
    add_column :member_invites, :expiration_date, :date
  end
end
