require "./lib/CreditCheck.rb"
require "minitest/autorun"
require "minitest/pride"


class CreditCheckTest < Minitest::Test
    def test_it_exist
        credit_check =CreditCheck.new
    end
end



    