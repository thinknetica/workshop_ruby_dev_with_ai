class Repository < ApplicationRecord
  validates :github_repo_id, presence: true, uniqueness: true
  validates :name, presence: true, length: { maximum: 255 }
  validates :private, inclusion: { in: [true, false] }

  has_many :user_repositories, dependent: :destroy
  has_many :users, through: :user_repositories
  has_many :chats, dependent: :destroy

  scope :private_repos, -> { where(private: true) }
  scope :public_repos, -> { where(private: false) }

  def self.find_or_create_from_github(repo_data)
    find_or_create_by(github_repo_id: repo_data[:id]) do |repository|
      repository.name = repo_data[:name]
      repository.private = repo_data[:private]
    end
  end

  def to_s
    name
  end
end
