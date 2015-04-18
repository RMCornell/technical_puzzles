class Validator
	attr_reader :string
	def initialize(string)
		@string = string
	end

	def split_into_array
		string.split("")
	end
end

