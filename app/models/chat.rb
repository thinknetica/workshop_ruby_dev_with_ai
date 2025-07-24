class Chat < ApplicationRecord
  belongs_to :repository, optional: true

  validates :chat_type, presence: true, inclusion: { in: %w[private group] }
end
