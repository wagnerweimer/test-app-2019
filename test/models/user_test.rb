require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

test "valida login obrigatorio" do
  u = User.new
  u.name = "thiago"
  u.password = "pwd"
  u.login = ""
  assert_not u.valid?
  end

  test "valida usuario com login informado" do
    u = User.new
    u.name = "thiago"
    u.password = "pwd"
    u.login = "thiago"
    assert u.valid?
    end
  




end

