class MathExpression

  def self.calculate(string)
    # matches = /(\d+)\s*(\w+)\s?(\d+)/.match(string)
    # num1 = matches[1].to_i
    # num2 = matches[3].to_i
    # action = matches[2]

    # if matches.size == 1
    #   return num1
    # elsif action == "PLUS"
    #   return (num1 + num2)
    # elsif action == "MINUS"
    #   return (num1 - num2)
    # else
    #   return num1
    # end

    value = string.split(" ")
    shortened_array = value.map{ |v| parser(v) }.compact!
    head, *tail = shortened_array
    tail.each_slice(2).inject(head) { |val1, next| val1.send(*next_op)}

  end

  private

  def is_number?(value)
    value.to_i == value
  end

  def parser(value)
    if OPERATOR.keys.include? value
      return OPERATOR[key]
    end

    if is_number?(value)
      value.to_i
    end
  end
end
