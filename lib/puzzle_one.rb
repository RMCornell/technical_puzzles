class Validator
	attr_reader :string
	def initialize(string)
		@string = string
	end

	def split_into_array
		string.split("")
	end

	def validate_parentheses
		split_into_array.include?("(" && ")")
	end

	def validate_braces
		split_into_array.include?("{" && "}")
	end

	def validate_brackets
		split_into_array.include?("[" && "]")
	end

	def validate_string
		if validate_parentheses == true && validate_braces == true && validate_brackets == true
			puts "Statement #{string} is valid"
		else
			puts "Statement #{string} is not valid"
		end
	end
end


validator = Validator.new("() slad{} { []fls")
validator.validate_string

