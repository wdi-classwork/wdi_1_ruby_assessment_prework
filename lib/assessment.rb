require 'byebug'
# Question 1
# This function should take an integer as an argument
# and output a string that contains that integer that number of times in a row
# Do not use puts!
# For example:
# string_it_x_times(4) #=> "4444"
# string_it_x_times(2) #=> "22"
def string_it_x_times(x)
  x.to_s * x
end

# Question 2
# This function should take an integer as an argument
# and will return the string of "fizz" if the number is divisible by 3,
# it will return "buzz" if it is divisible by 5,
# it will return "fizzbuzz" if it is divisible by 3 and 5
# and will return the original integer if it is divisible by neither
# Do not use puts!
# For example:
# fizz_or_buzz(3) #=> "fizz"
# fizz_or_buzz(10) #=> "buzz"
# fizz_or_buzz(15) #=> "fizzbuzz"
# fizz_or_buzz(2) #=> 2
def fizz_or_buzz(x)
  if x % 3 == 0 && x % 5 != 0
    "fizz"
  elsif x % 5 == 0 && x % 3 != 0
    "buzz"
  elsif x % 15 == 0
    "fizzbuzz"
  else
    x
  end
end

# Question 3
# This function should take an array and an element of any type
# The function should return the array, with the element inserted at the end
# Do not use puts!
# For example:
# add_element_to_array([1, 2], 3) #=> [1, 2, 3]
# add_element_to_array(['fizz', 'buzz'], 'baz') #=> ['fizz', 'buzz', 'baz']
def add_element_to_array(array, item)
  array << item
end

# Question 4
# This function should take a string that represents a day of the week
# It should return true if it is a week day, and false if it is a weekend
# Assume that the input strings is lowercase and spelled properly
# For example:
# is_day_a_weekday?('monday') #=> true
# is_day_a_weekday?('saturday') #=> false
def is_day_a_weekday?(day)
  weekdays = ['monday','tuesday','wednesday','thursday','friday']
  weekdays.include? day
end

# Question 5
# This function should take two arguments that are either integers 2..10,
# or strings 'j', 'q', 'k', 'a' representing playing cards
# The function returns true if the sum of the values of the cards if 21,
# and false if it is any other number.
# The value of the 'j', 'q', 'k' is 10.
# The value of 'a' is 1 or 11, depending on what is more advantagous
# For example:
# blackjack?(10, 'a') #=> true
# blackjack?(5, 4) #=> false
def blackjack?(card_one, card_two)
  cards = {
    "j" => 10,
    "q" => 10,
    "k" => 10,
    "a" => 11
  }
  if card_one.class == Fixnum && card_two.class == Fixnum
    card_one + card_two == 21
  elsif card_one.class == String && card_two.class == String
    cards[card_one] + cards[card_two] == 21
  elsif card_one.class == String && card_two.class == Fixnum
    cards[card_one] + card_two == 21
  elsif card_one.class == Fixnum && card_two.class == String
    card_one + cards[card_two] == 21
  end
end
