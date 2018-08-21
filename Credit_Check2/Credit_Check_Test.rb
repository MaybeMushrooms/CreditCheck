require "./credit_check.rb"
require "minitest/autorun"
require "minitest/pride"


class CreditCheckTest < Minitest::Test
#   def test_it_exist
#     credit_check =CreditCheck.new
#     assert_instance_of CreditCheck, credit_check
#   end
  
  def test_it_validates
    credit_check = CreditCheck.new("342804633855673")
    assert_equal true, credit_check.valid_number?("342804633855673")
  end
    
end



    