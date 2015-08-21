class MathExpression

  def self.calculate(string)
    value = string.split(" ")
    shortened_array = value.map{ |v| parser(v) }.compact
    head, *tail = shortened_array
    tail.each_slice(2).inject(head) { |b1, operation| b1.send(*operation)}
  end

  OPERATOR = {
    "PLUS" => "+",
    "MINUS" => "-"
  }

  private

  def self.is_number?(value)
    Integer(value) rescue false
  end

  def self.parser(value)
    if OPERATOR.keys.include? value
      return OPERATOR[value]
    end

    if is_number?(value)
      value.to_i
    end
  end
end