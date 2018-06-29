require "./credit_check.rb"
require "minitest/autorun"
require "minitest/pride"


class CreditCheckTest < Minitest::Test
    def test_it_exist
        credit_check =CreditCheck.new
        assert_instance_of CreditCheck, credit_check
    end
end



    