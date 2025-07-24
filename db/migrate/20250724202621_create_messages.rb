class CreateMessages < ActiveRecord::Migration[8.0]
  def change
    create_table :messages do |t|
      t.references :chat, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :content, limit: 400

      t.timestamps
    end
    add_index :messages, [ :chat_id, :created_at ]
  end
end
