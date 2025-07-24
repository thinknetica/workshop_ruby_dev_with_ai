class Repository < ApplicationRecord
  validates :github_repo_id, presence: true, uniqueness: true
  validates :name, presence: true
  validates :url, presence: true
end
