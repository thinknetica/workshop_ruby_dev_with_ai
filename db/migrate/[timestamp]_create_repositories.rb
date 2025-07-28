class CreateRepositories < ActiveRecord::Migration[7.0]
  def change
    create_table :repositories do |t|
      t.bigint :github_repo_id, null: false
      t.string :name, null: false
      t.boolean :private, null: false, default: false

      t.timestamps
    end

    add_index :repositories, :github_repo_id, unique: true
    add_index :repositories, :private
  end
end
