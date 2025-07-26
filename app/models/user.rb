class User < ApplicationRecord
  validates :github_id, presence: true, uniqueness: true
  validates :username, presence: true

  has_many :user_repositories, dependent: :destroy
  has_many :repositories, through: :user_repositories
  has_many :owned_repositories, -> { where(user_repositories: { role: 'owner' }) }, 
           through: :user_repositories, source: :repository

  def self.create_from_github(auth)
    create! do |user|
      user.github_id = auth.uid
      user.username = auth.info.nickname
      user.email = auth.info.email
      user.avatar_url = auth.info.image
    end
  end

  def private_repositories
    repositories.private_repos
  end
  
  def common_repositories_with(other_users)
    user_ids = Array(other_users).map(&:id) + [id]
    Repository.common_between_users(user_ids)
  end
end
