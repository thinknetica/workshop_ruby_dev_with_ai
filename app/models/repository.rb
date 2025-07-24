class Repository < ApplicationRecord
  has_many :user_repositories
  has_many :users, through: :user_repositories

  validates :github_repo_id, presence: true, uniqueness: true
  validates :name, presence: true
  validates :url, presence: true
end
