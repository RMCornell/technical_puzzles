require 'minitest/autorun'
require 'minitest/pride'
require './lib/basic_stack'

class BasicStackTest < MiniTest::Test
	def test_it_exists
		assert BasicStack.new
	end

	def test_it_starts_with_empty_array
		assert BasicStack.new
	end
end