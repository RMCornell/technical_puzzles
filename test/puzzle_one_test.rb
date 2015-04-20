require 'minitest/autorun'
require 'minitest/pride'
require './lib/puzzle_one'

class VaildatorTest < MiniTest::Test
	def test_it_exists
		assert Validator.new("({12}[34(56){67}])")
	end

	def test_it_splits_message_into_array
		validator = Validator.new("({12}[34(56){67}])")
		assert_equal ["(", "{", "1", "2", "}", "[", "3", "4", "(", "5", "6", ")", "{", "6", "7", "}", "]", ")"], validator.split_into_array
	end

	def test_it_validates_parentheses
		validator = Validator.new("({12}[34(56){67}])")
		assert validator.validate_parentheses
	end

	def test_it_validates_braces
		validator = Validator.new("({12}[34(56){67}])")
		assert validator.validate_braces
	end

	def test_it_validates_brackets
		validator = Validator.new("({12}[34(56){67}])")
		assert validator.validate_brackets
	end

	def test_it_validates_well_formed_string
		validator = Validator.new("({12}[34(56){67}])")
		assert validator.validate_string
	end

	def test_it_invalidates_non_well_formed_strings
		validator = Validator.new("({12))")
		refute validator.validate_string
	end

	def test_it_invalidates_another_string
		validator = Validator.new("({12)}")
		refute validator.validate_string
	end

	def test_it_outputs_correctly_for_valid_strings
		validator = Validator.new("({12}[34(56){67}])")
		assert_equal "String is Valid", validator.validated_output
	end

	def test_it_outputs_correctly_for_invalid_strings
		validator = Validator.new("({12)}")
		assert_equal "String is Invalid", validator.validated_output
	end
end