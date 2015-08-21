class MathExpression

  OPERATOR = {
    "PLUS" => "+",
    "MINUS" => "-"
  }.freeze

  def self.calculate(string)
    value = string.split(" ")
    shortened_array = value.map{ |v| parse(v) }.compact
    head, *tail = shortened_array
    tail.each_slice(2).inject(head) { |number, operation| number.public_send(*operation)}
  end

  def self.number?(value)
    !value[/\A\d+\z/].nil?
  end

  def self.parse(value)
    if OPERATOR.keys.include?(value)
      return OPERATOR[value]
    elsif number?(value)
      value.to_i
    else
      puts "Invalid input"
    end
  end
end