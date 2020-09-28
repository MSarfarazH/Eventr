class CreateChats < ActiveRecord::Migration[6.0]
  def change
    create_table :chats do |t|
      t.integer :user_id
      t.integer :other_user_id
      t.string :text

      t.timestamps
    end
  end
end
