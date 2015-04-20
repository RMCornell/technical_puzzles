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
			return true
		else
			return false
		end
	end

	def validated_output
		if validate_string == true
			"String is Valid"
		else
			"String is Invalid"
		end
	end
end

#todo add features that will allow for strings with either complete brackets, braces or parentheses to count as well-formed-strings






