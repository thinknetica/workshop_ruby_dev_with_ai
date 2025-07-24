require "test_helper"

class UserRepositoryTest < ActiveSupport::TestCase
  test "validates presence of user_id" do
    ur = UserRepository.new(repository_id: 1)
    assert_not ur.valid?
    assert_includes ur.errors[:user_id], "can't be blank"
  end

  test "validates presence of repository_id" do
    ur = UserRepository.new(user_id: 1)
    assert_not ur.valid?
    assert_includes ur.errors[:repository_id], "can't be blank"
  end

  test "validates uniqueness of user_id scoped to repository_id" do
    user = User.create!(github_id: 1, username: "testuser")
    repo = Repository.create!(github_repo_id: 1, name: "repo", url: "https://github.com/org/repo")
    UserRepository.create!(user_id: user.id, repository_id: repo.id)
    ur = UserRepository.new(user_id: user.id, repository_id: repo.id)
    assert_not ur.valid?
    assert_includes ur.errors[:user_id], "has already been taken"
  end

  # Associations (to be implemented later)
  # test "belongs to user" do
  #   assert_respond_to UserRepository.new, :user
  # end
  # test "belongs to repository" do
  #   assert_respond_to UserRepository.new, :repository
  # end
end
