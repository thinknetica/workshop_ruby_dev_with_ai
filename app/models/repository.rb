class Repository < ApplicationRecord
  validates :github_repo_id, presence: true, uniqueness: true
  validates :name, presence: true, length: { maximum: 255 }
  validates :full_name, presence: true, format: { with: /\A[\w\-\.]+\/[\w\-\.]+\z/ }
  validates :private, inclusion: { in: [true, false] }

  has_many :user_repositories, dependent: :destroy
  has_many :users, through: :user_repositories
  has_many :chats, dependent: :destroy

  scope :private_repos, -> { where(private: true) }
  scope :public_repos, -> { where(private: false) }
  scope :for_user, ->(user) { joins(:users).where(users: { id: user.id }) }

  def self.common_between_users(user_ids)
    joins(:user_repositories)
      .where(user_repositories: { user_id: user_ids })
      .group('repositories.id')
      .having('COUNT(DISTINCT user_repositories.user_id) = ?', user_ids.count)
  end

  def self.find_or_create_from_github(repo_data)
    find_or_create_by(github_repo_id: repo_data[:id]) do |repository|
      repository.name = repo_data[:name]
      repository.full_name = repo_data[:full_name]
      repository.private = repo_data[:private]
      repository.description = repo_data[:description]
    end
  end

  def to_s
    full_name
  end

  def group_chat_name
    "#{name.humanize} Team"
  end
end
