class CreateRepositories < ActiveRecord::Migration[8.0]
  def change
    create_table :repositories do |t|
      t.bigint :github_repo_id
      t.string :name
      t.string :url

      t.timestamps
    end
    add_index :repositories, :url, unique: true
  end
end
