gem "minitest"
require 'minitest/autorun'
class TestCashRegister< Minitest::Test
  def setup
    @register = CashRegister.new
  end
  def test_is_total_zero
    assert_equal 0, @register.total
  end
  def test_total_calculation
    @register.scan 1
    @register.scan 2
    assert_equal 3,@register.total
  end
  def test_clear
  test_total_calculation
  @register.clear
    assert_equal 0, @register.total
  end
end

class CashRegister
  def total
    @items.inject(0, &:+)
  end
  def initialize
    @items = []
  end
  def scan(price)
    @items << price
  end
  def clear
    @items.clear
  end
end