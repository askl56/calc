class MathExpression

  require_relative "default_expression_formatter"

  def initialize(expression)
    @expression = expression
  end

  OPERATOR = {
    "PLUS" => "+",
    "MINUS" => "-",
    "DIVIDE" => "/",
    "TIMES" => "*"
  }.freeze

  def self.calculate(expression)
    answer = MathExpression.answer(expression)
    DefaultExpressionFormatter.default_format(expression, answer)
  end

  def calculate
    head, *tail = expression.split.collect{ |v| parse(v) }.compact
    tail.each_slice(2).inject(head) { |number, operation| number.public_send(*operation)}
  end

  def self.answer(expression)
    @answer = new(expression).calculate
  end


  private

  attr_reader :expression

  def number?(value)
    !value[/\A\d+\z/].nil?
  end

  def parse(value)
    if OPERATOR.keys.include?(value)
      return OPERATOR[value]
    elsif number?(value)
      value.to_i
    else
      puts "Invalid input"
    end
  end
end
