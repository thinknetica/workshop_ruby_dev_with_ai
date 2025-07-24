class Message < ApplicationRecord
  belongs_to :chat
  belongs_to :user

  validates :chat_id, presence: true
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 400 }
end
