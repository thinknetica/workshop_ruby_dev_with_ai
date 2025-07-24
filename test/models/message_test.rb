require "test_helper"

class MessageTest < ActiveSupport::TestCase
  test "validates presence of chat_id" do
    message = Message.new(user_id: 1, content: "Hello")
    assert_not message.valid?
    assert_includes message.errors[:chat_id], "can't be blank"
  end

  test "validates presence of user_id" do
    message = Message.new(chat_id: 1, content: "Hello")
    assert_not message.valid?
    assert_includes message.errors[:user_id], "can't be blank"
  end

  test "validates presence of content" do
    message = Message.new(chat_id: 1, user_id: 1)
    assert_not message.valid?
    assert_includes message.errors[:content], "can't be blank"
  end

  test "validates length of content (max 400)" do
    message = Message.new(chat_id: 1, user_id: 1, content: "a" * 401)
    assert_not message.valid?
    assert_includes message.errors[:content], "is too long (maximum is 400 characters)"
  end

  test "belongs to chat" do
    assert_respond_to Message.new, :chat
  end
  test "belongs to user" do
    assert_respond_to Message.new, :user
  end
end
