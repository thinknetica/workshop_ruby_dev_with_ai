class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :github_id, null: false
      t.string :username, null: false
      t.string :email
      t.string :avatar_url

      t.timestamps
    end

    add_index :users, :github_id, unique: true
    add_index :users, :username
    add_index :users, :email
  end
end
