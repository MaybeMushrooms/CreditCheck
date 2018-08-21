require "./credit_check.rb"
require "minitest/autorun"
require "minitest/pride"


class CreditCheckTest < Minitest::Test


    def test_change_string_integer
        credit_check =CreditCheck.new
        assert_equal([3, 1, 7, 8, 9, 3, 7, 2, 9, 9, 7], credit_check.number_to_integer("79927398713"))
    end

    def test_even_index_numbers_doubled
end