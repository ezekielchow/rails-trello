require 'test_helper'

class ListTest < ActiveSupport::TestCase
  test "should not save list without name" do
    list = List.new
    assert_not list.save, "Saved the list without a name"
  end

  test "should report error" do
    assert_raises(NameError) do
      some_undefined_variable
    end
  end
end
