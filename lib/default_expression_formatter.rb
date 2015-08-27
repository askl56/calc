class ExpressionFormatter

  def initialize(expression, result)
    @expression = expression
    @result = result
  end

  def self.default_format(expression, answer)
    return {"expression" => expression, "answer" => answer}
  end
end
