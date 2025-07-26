class User < ApplicationRecord
  validates :github_id, presence: true, uniqueness: true
  validates :username, presence: true

  has_many :user_repositories, dependent: :destroy
  has_many :repositories, through: :user_repositories

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
end
