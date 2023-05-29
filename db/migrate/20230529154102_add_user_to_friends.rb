class AddUserToFriends < ActiveRecord::Migration[7.0]
  def change
    add_reference :friends, :user, null: false, foreign_key: true
  end
end
