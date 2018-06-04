class AddRelationshipToFriendship < ActiveRecord::Migration[5.2]
  def change
    add_column :friendships, :relationship, :string
  end
end
