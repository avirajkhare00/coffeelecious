require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(firstName: "Aviraj", lastName: "Khare", email: "avirajkhare00@gmail.com")
  end
  
  test "user is valid" do
    assert @user.valid?
  end
end