require "minitest/autorun"
require "./lib/math_expression"

class TestMathExpression < Minitest::Test
  def test_number
    assert_equal 9, MathExpression.calculate("9")
  end

  def test_simple_addition
    assert_equal 5, MathExpression.calculate("2 PLUS 3")
  end

  def test_simple_subtraction
    assert_equal 3, MathExpression.calculate("5 MINUS 2")
  end

  def test_complex_calculation
    assert_equal 14, MathExpression.calculate("4 PLUS 7 MINUS 1 PLUS 4")
  end
end