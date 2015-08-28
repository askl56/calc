class DefaultExpressionFormatter

  def initialize(expression, answer)
    @expression = expression
    @answer = answer
  end

  def self.default_format(expression, answer)
    return {"expression" => expression, "answer" => answer}
  end
end
