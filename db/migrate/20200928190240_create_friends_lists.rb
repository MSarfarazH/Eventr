class CreateFriendsLists < ActiveRecord::Migration[6.0]
  def change
    create_table :friends_lists do |t|
      t.integer :user_id
      t.integer :user_id_2

      t.timestamps
    end
  end
end
