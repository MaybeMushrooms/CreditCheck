card_number = "342804633855673".reverse

class CreditCheck 
    
    
    card_number = "342804633855673".reverse
#     numbers=[]

# class CreditCheck
#     def initialize
#     convert_credit_card_number_to_string
#     reverse_credit_card_number
#     even_index_numbers_doubled
#     numbers_over_nine_handled
#     validate_number
# end

def convert_credit_card_number_to_string(card_number)
    convert = [] 
    card_number.to_i.to_a.map! do |number|
        convert << card_number
      end
      convert
end

def reverse_credit_card_number(convert)
    convert.reverse
end

def odd_index_numbers_doubled(convert)
    double_digits = []
    convert.each_with_index do |value, index|
        if index.odd? 
            double_digits << value * 2 
        else 
            double_digits << value        
        end
    end
end
   
    def numbers_over_nine_handled(double_digits)
        summed_digits = []
        summed_digits_two = summed_digits.sum
    double_digits.each do |number|
       # if number > 9 - 9
        if number > 9
         summed_digits << number - 9 
       else 
        #if number < 9 do nothin
        summed_digits << number
       end  
    end
end

   def validate_number(summed_digits_two)
    summed_digits_two do |validation| 
        if summed_digits_two % 10==0   
            print true
        else
            print false
        end
    end
end

def valid_number?(credit_check)
    credit_check_one = convert_credit_card_number_to_string(credit_check)
    validated_doubled_numbs = convert_credit_card_number_to_array(credit_check_one)
    numbers_over_nine_handled = even_index_numbers_doubled(validated_doubled_numbs)
    final_check = validate_number(numbers_over_nine_handled)
end

end

#credit_check = CreditCheck.new
#credit_check.convert_credit_card_number_to_string(card_number)
 
