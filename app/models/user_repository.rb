class UserRepository < ApplicationRecord
  belongs_to :user
  belongs_to :repository

  validates :user_id, presence: true
  validates :repository_id, presence: true
  validates :user_id, uniqueness: { scope: :repository_id }
end
