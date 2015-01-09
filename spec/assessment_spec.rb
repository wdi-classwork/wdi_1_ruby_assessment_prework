require './spec/spec_helper'
require_relative '../lib/assessment'

RSpec.describe "string_it_x_times" do
  it 'takes a number, converts it to a string and multiplies it by that many times' do
    expect(string_it_x_times(4)).to eq "4444"
    expect(string_it_x_times(2)).to eq "22"
  end
end

RSpec.describe 'fizz_or_buzz' do
  it 'takes a number, returns "fizz" if that number is divisible by 3, returns "buzz" if that number is divisible by 5, returns "fizzbuzz" if that number is divisible by 3 or 5, returns the number if not divisible by 3 or 5 ' do
    expect(fizz_or_buzz(2)).to eq 2
    expect(fizz_or_buzz(3)).to eq "fizz"
    expect(fizz_or_buzz(5)).to eq "buzz"
    expect(fizz_or_buzz(15)).to eq "fizzbuzz"
  end
end

RSpec.describe 'add_element_to_array' do
  it 'inserts an element to the end of the array and returns the array' do
    expect(add_element_to_array([1,2],3)).to eq [1,2,3]
    expect(add_element_to_array(['fizz','buzz'],'baz')).to eq ['fizz','buzz','baz']
  end 
end

RSpec.describe 'is_day_a_weekday' do
  it 'takes a string and returns true if it is a weekday, false if it is a weekend day' do
    expect(is_day_a_weekday?('monday')).to eq true
    expect(is_day_a_weekday?('saturday')).to eq false
  end
end

RSpec.describe 'blackjack?' do
  it 'takes two arguments, either integers or strings representing playing cards, and returns true if the sum of the values is 21, false if any other number' do
    expect(blackjack?(10, 'a')).to eq true
    expect(blackjack?(5, 4)).to eq false
  end
end