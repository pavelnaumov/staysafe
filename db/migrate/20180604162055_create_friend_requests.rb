class CreateFriendRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :friend_requests do |t|
      t.string :relationship

      t.timestamps
    end
  end
end
