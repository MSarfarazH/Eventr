class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :interest
      t.string :bio
      t.string :username
      t.string :password
      t.references :friend

      t.timestamps
    end
  end
end
