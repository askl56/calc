class ExecExpressionFormatter

  def initialize(expression, result)
    @expression = expression
    @result = result
  end

  def self.executable_format(result)
    puts "The answer to your query is #{result}"
  end

end
