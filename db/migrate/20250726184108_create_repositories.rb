class CreateRepositories < ActiveRecord::Migration[8.0]
  def change
    create_table :repositories do |t|
      t.bigint :github_repo_id, null: false
      t.string :name, null: false, limit: 255
      t.string :full_name, null: false # owner/repo format
      t.text :description # для будущих нужд
      t.boolean :private, null: false, default: false

      t.timestamps
    end
    
    add_index :repositories, :github_repo_id, unique: true, name: 'idx_repos_github_id'
    add_index :repositories, :private, name: 'idx_repos_private'
    add_index :repositories, :full_name, name: 'idx_repos_full_name'
  end
end
