class ExpressionFormatter

  def initialize(result)
    @result = result
  end

  # def default_format(expression, answer)
  #   return Hash.new {"expression" => expression, "answer" => answer}
  # end

  def executable_format(result)
    puts "The answer to your query is #{result}"
  end
end
