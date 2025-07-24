require "test_helper"

class ChatUserTest < ActiveSupport::TestCase
  test "validates presence of chat_id" do
    cu = ChatUser.new(user_id: 1)
    assert_not cu.valid?
    assert_includes cu.errors[:chat_id], "can't be blank"
  end

  test "validates presence of user_id" do
    cu = ChatUser.new(chat_id: 1)
    assert_not cu.valid?
    assert_includes cu.errors[:user_id], "can't be blank"
  end

  test "validates uniqueness of chat_id scoped to user_id" do
    chat = Chat.create!(chat_type: "private")
    user = User.create!(github_id: 1, username: "testuser")
    ChatUser.create!(chat_id: chat.id, user_id: user.id)
    cu = ChatUser.new(chat_id: chat.id, user_id: user.id)
    assert_not cu.valid?
    assert_includes cu.errors[:chat_id], "has already been taken"
  end

  # Associations (to be implemented later)
  # test "belongs to chat" do
  #   assert_respond_to ChatUser.new, :chat
  # end
  # test "belongs to user" do
  #   assert_respond_to ChatUser.new, :user
  # end
  # test "belongs to last_read_message (optional)" do
  #   assert_respond_to ChatUser.new, :last_read_message
  # end
end
