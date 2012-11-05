require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "valid phone" do
    assert ((students(:valid).phone =~ /(\+(\d{2,}))?\d{10}/).to_i == 0)
  end
end
