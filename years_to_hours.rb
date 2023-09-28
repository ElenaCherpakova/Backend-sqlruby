# frozen_string_literal: true

# using print method instead of put because print doesnt add a new line
print 'Enter a number of years: '
years = gets.chomp # this returns a string
years = years.to_i # this converts a string to an integer
hours = years * 365 * 24
puts "That's #{hours} hours."

print 'Enter a number of decades: '
decades = gets.chomp
decades = decades.to_i
minutes = decades * 10 * 365 * 24 * 60
puts "That's #{minutes} minutes."

print 'Enter a number of age: '
age = gets.chomp
age = age.to_i
seconds = age * 365 * 24 * 60 * 60
puts "That's #{seconds} seconds old."

# Refactoring by using a function to avoid redundancy
def calculate_time(unit, conversion, result_unit)
  print "Enter a number of #{unit}: "
  number = gets.chomp # this returns a string
  number = number.to_i # this converts a string to an integer
  result = number * conversion
  puts "That's #{result} #{result_unit}."
end

calculate_time('years', 365 * 24, 'hours')
calculate_time('decades', 10 * 365 * 24 * 60, 'minutes')
calculate_time('ages', 365 * 24 * 60 * 60, 'seconds old')
