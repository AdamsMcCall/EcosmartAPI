require 'test_helper'

class ValidityTest < ActiveSupport::TestCase
  test "should not save child without some mandatory stuff" do
    child = Child.new
    assert_not child.save
  end

  test "should not save parent without some mandatory stuff" do
    parent = Parent.new
    assert_not parent.save
  end

  test "should not save transaction without some mandatory stuff" do
    transaction = Transaction.new
    assert_not transaction.save
  end

  test "should not save transfer without some mandatory stuff" do
    transfer = Transfer.new
    assert_not transfer.save
  end

  test "should not save links without some mandatory stuff" do
    link = Link.new
    assert_not link.save
  end
end
