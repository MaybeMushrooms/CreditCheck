require 'pry'

class CreditCheck
  attr_reader :number, 
              :limit
  def initialize(number, limit)
    @number = number
    @limit = limit
  end

  def is_valid?
    integers        = get_digits(number)
    doubled         = double_integers(integers)
    summed_over_ten = sum_doubled(doubled)
    sum             = sum_digits(summed_over_ten)
    print_validity(sum, number)
  end

  def get_digits(card_number)
    digits = card_number.chars
    integers = []
    digits.each do |digit|
      integers << digit.to_i
    end
    return integers
  end

  def double_integers(integers)
    doubled = []
    integers.each.with_index do |integer, index|
      if index.even?
        doubled << integer * 2
      else
        doubled << integer
      end
    end
    return doubled
  end

  def sum_doubled(doubled)
    summed_over_ten = []
    doubled.each do |digit|
      if digit > 9
        summed_over_ten << digit - 9
      else
        summed_over_ten << digit
      end
    end
    summed_over_ten
  end

  def sum_digits(summed_over_ten)
    sum = 0
    summed_over_ten.each do |digit|
      sum += digit
    end
    sum
  end

  def print_validity(sum, card_number)
    if sum % 10 == 0
      puts "the card #{card_number} is valid"
    else
      puts "the card #{card_number} is invalid"
    end
  end

  def last_four 
   @number[-4..-1]

  end
end

cc = CreditCheck.new("5541808923795240", 15000)

cc.is_valid?
cc.is_valid?
cc.last_four
binding.pry



Collapse 