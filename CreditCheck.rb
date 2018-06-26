card_number = "4929735477250543".reverse
    
numbers = card_number.chars
    numbers.map! do |convert|
    convert.to_i
    end



print numbers


# Your Luhn Algorithm Here

# Output
## If it is valid, print "The number is valid!"
## If it is invalid, print "The number is invalid!"