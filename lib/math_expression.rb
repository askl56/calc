require "minitest/autorun"

class MathExpression
  def self.calculate(string)
  	return string.to_i unless string.include?(' ')
  end 
end

class String
	OPS = { "PLUS" => "+", "MINUS" => "-", "MUL" => "*", "DIV" => "/" }

	def translate; op = OPS.keys.grep(/#{self}/i)
		return op.size>0 ? OPS[op[0]] : self
	end
end