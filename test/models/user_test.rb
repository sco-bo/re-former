require 'test_helper'

class UserTest < ActiveSupport::TestCase
 
  def setup
    @user = User.new(username: "Scott", email: "scott@example.com", password: "foobar", password_confirmation: "foobar")
  end

  test "should be valid" do 
    assert @user.valid?
  end

  test "username should be present" do 
    @user.username = " "
    assert_not @user.valid?
  end

  test "email should be present" do 
    @user.email = " "
    assert_not @user.valid?
  end

  test "password should be present (nonblank)" do 
    @user.password = @user.password_confirmation = " " * 6
    assert_not @user.valid?
  end
end
