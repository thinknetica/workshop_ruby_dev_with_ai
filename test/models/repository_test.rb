require "test_helper"

class RepositoryTest < ActiveSupport::TestCase
  test "validates presence of github_repo_id" do
    repo = Repository.new(name: "repo1", url: "https://github.com/org/repo1")
    assert_not repo.valid?
    assert_includes repo.errors[:github_repo_id], "can't be blank"
  end

  test "validates uniqueness of github_repo_id" do
    Repository.create!(github_repo_id: 123, name: "repo1", url: "https://github.com/org/repo1")
    repo = Repository.new(github_repo_id: 123, name: "repo2", url: "https://github.com/org/repo2")
    assert_not repo.valid?
    assert_includes repo.errors[:github_repo_id], "has already been taken"
  end

  test "validates presence of name" do
    repo = Repository.new(github_repo_id: 123, url: "https://github.com/org/repo1")
    assert_not repo.valid?
    assert_includes repo.errors[:name], "can't be blank"
  end

  test "validates presence of url" do
    repo = Repository.new(github_repo_id: 123, name: "repo1")
    assert_not repo.valid?
    assert_includes repo.errors[:url], "can't be blank"
  end

  # Associations (to be implemented later)
  # test "has many user_repositories" do
  #   assert_respond_to Repository.new, :user_repositories
  # end
end
