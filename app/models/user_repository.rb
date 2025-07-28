class UserRepository < ApplicationRecord
  belongs_to :user
  belongs_to :repository

  validates :user_id, uniqueness: { scope: :repository_id }
  validates :role, inclusion: { in: %w[owner admin member] }

  before_create :set_access_granted_at

  scope :owners, -> { where(role: "owner") }
  scope :admins, -> { where(role: "admin") }
  scope :members, -> { where(role: "member") }

  private

  def set_access_granted_at
    self.access_granted_at ||= Time.current
  end
end
