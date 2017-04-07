require 'test_helper'

class AdminTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @admin = Admin.new(name:"Example admin")
  end

  test "admin name should be valid" do
    assert @admin.valid?
  end

  test "name should be present" do
    @admin.name = "  "
    assert_not @admin.valid?
  end

  test "name should not be too long" do
    @admin.name = "a" * 21
    assert_not @admin.valid?
  end

  test "names should be unique" do
    duplicate_admin = @admin.dup
    @admin.save
    assert_not duplicate_admin.valid?
  end
end
