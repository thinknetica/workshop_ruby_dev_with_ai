class CreateUserRepositories < ActiveRecord::Migration[8.0]
  def change
    create_table :user_repositories do |t|
      t.references :user, null: false, foreign_key: true
      t.references :repository, null: false, foreign_key: true
      t.string :role, default: 'member'
      t.datetime :access_granted_at

      t.timestamps
    end
    
    add_index :user_repositories, [:user_id, :repository_id], 
              unique: true, name: 'idx_user_repos_unique'
    add_index :user_repositories, :repository_id, name: 'idx_user_repos_repo'
    add_index :user_repositories, :role, name: 'idx_user_repos_role'
  end
end
