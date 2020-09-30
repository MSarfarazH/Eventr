class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :interest
      t.string :bio
      t.string :username
      t.string :password_digest
      t.references :friend
      t.string :img_url

      t.timestamps
    end
  end
end
