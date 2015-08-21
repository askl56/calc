class MathExpression

  def initialize(expression)
    @expression = expression
  end

  OPERATOR = {
    "PLUS" => "+",
    "MINUS" => "-"
  }.freeze

  def self.calculate(expression)
    new(expression).calculate
  end

  def calculate
    head, *tail = expression.split.collect{ |v| parse(v) }.compact
    tail.each_slice(2).inject(head) { |number, operation| number.public_send(*operation)}
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