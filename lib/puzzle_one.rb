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
end

