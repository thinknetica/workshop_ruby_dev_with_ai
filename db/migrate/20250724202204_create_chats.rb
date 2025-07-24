class CreateChats < ActiveRecord::Migration[8.0]
  def change
    create_table :chats do |t|
      t.string :chat_type
      t.references :repository, null: true, foreign_key: true

      t.timestamps
    end
  end
end
