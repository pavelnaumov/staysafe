class AddPictureAndStateToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :picture, :string
    add_column :users, :state, :integer, null: false, default: 0
  end
end
