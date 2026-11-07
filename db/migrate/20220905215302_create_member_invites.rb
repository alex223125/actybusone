class CreateMemberInvites < ActiveRecord::Migration[7.0]
  def change
    create_table :member_invites do |t|
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
