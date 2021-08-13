require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  setup do
    @user = User.create(username: "JohnDoe", password: "password")
    @message = Message.new(body: "This is some new message.", user_id: @user.id)
  end

  test "message is valid" do
    assert @message.valid?
  end

  test "body should be present" do
    @message.body = " "
    assert_not @message.valid?
  end
end
