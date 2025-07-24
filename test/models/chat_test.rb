require "test_helper"

class ChatTest < ActiveSupport::TestCase
  test "validates presence of chat_type" do
    chat = Chat.new
    assert_not chat.valid?
    assert_includes chat.errors[:chat_type], "can't be blank"
  end

  test "validates inclusion of chat_type" do
    chat = Chat.new(chat_type: "invalid")
    assert_not chat.valid?
    assert_includes chat.errors[:chat_type], "is not included in the list"
  end

  test "allows chat_type to be private or group" do
    chat = Chat.new(chat_type: "private")
    chat.valid?
    assert_not_includes chat.errors[:chat_type], "is not included in the list"
    chat = Chat.new(chat_type: "group")
    chat.valid?
    assert_not_includes chat.errors[:chat_type], "is not included in the list"
  end

  # Associations (to be implemented later)
  # test "belongs to repository (optional)" do
  #   assert_respond_to Chat.new, :repository
  # end
end
