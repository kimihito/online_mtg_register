require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "sample test fixtures one" do
  	user = User.find(1)
  	assert_not_nil user
  	assert_equal "hogeeunnko", user.name
  end
end
