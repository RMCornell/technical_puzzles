require 'minitest/autorun'
require 'minitest/pride'
require './lib/puzzle_one'

class VaildatorTest < MiniTest::Test
	def test_it_exists
		assert Validator.new("({12}[34(56){67}])")
	end

	def test_it_splits_string_into_array
		validator = Validator.new("({12}[34(56){67}])")
		assert_equal
	end


end