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


end