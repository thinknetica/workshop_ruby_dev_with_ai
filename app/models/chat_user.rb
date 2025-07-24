class ChatUser < ApplicationRecord
  belongs_to :chat
  belongs_to :user
  belongs_to :last_read_message, class_name: "Message", optional: true

  validates :chat_id, presence: true
  validates :user_id, presence: true
  validates :chat_id, uniqueness: { scope: :user_id }
end
