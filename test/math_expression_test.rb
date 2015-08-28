require "minitest/autorun"
require "./lib/math_expression"

class TestMathExpression < Minitest::Test
  def test_number
    assert 9, MathExpression.answer("9")
  end

  def test_simple_addition
    assert 5, MathExpression.answer("2 PLUS 3")
  end

  def test_simple_subtraction
    assert 3, MathExpression.answer("5 MINUS 2")
  end

  def test_complex_calculation
    assert 14, MathExpression.answer("4 PLUS 7 MINUS 1 PLUS 4")
  end

  def test_complex_expression
    assert 10, MathExpression.answer("2 PLUS 5 MINUS 1 PLUS 4")
  end

  def test_another_complex_expression
    assert 5, MathExpression.answer("2 TIMES 4 MINUS 3")
  end

  def test_more_complex_expression
    assert 10, MathExpression.answer("10 DIVIDE 2 PLUS 6 MINUS 1")
  end
end
