class CreateChatUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :chat_users do |t|
      t.references :chat, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :last_read_message, null: true, foreign_key: { to_table: :messages }

      t.timestamps
    end
    add_index :chat_users, [ :chat_id, :user_id ], unique: true
  end
end
