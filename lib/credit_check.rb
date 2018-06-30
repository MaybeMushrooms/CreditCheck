# card_number = "342804633855673".reverse
#     numbers=[]

class CreditCheck


def valid_number?(credit_card_check)
    mutated_number = convert_credit_card_number_to_array(credit_card_check)
    validated_doubled_numbs = convert_credit_card_number_to_string(mutated_number)
    numbers_over_nine_handled = even_index_numbers_doubled(validated_doubled_numbs)
    validate_number(numbers_over_nine_handled)

end

def convert_credit_card_number_to_array(card_number)
    card_number.reverse.chars
end

def convert_credit_card_number_to_string(reversed_array)
    convert = reversed_array.map! do |number|
        number.to_i
    end
end

def even_index_numbers_doubled(convert)
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
 
end