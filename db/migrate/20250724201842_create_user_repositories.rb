class CreateUserRepositories < ActiveRecord::Migration[8.0]
  def change
    create_table :user_repositories do |t|
      t.references :user, null: false, foreign_key: true
      t.references :repository, null: false, foreign_key: true

      t.timestamps
    end
    add_index :user_repositories, [ :user_id, :repository_id ], unique: true
  end
end
