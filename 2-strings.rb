=begin
    Strings
=end

# Declare and assign variable
name = "Satoshi Nakamoto"

# Output interpolated strings
puts "The name is #{name}."

# Output the string length
# What follows after the dot is the method. Remember: everything is an object in Ruby
puts name.length

# Output the string capitalized (first character)
puts name.capitalize

# Output the string uppercase
puts name.upcase

# Output the string lowercase
puts name.downcase

# Output the string reversed
puts name.reverse

# Reverse the variable "name" and update it
# Methods with "!" are known as "bang methods" and update the object
name.reverse!

# Output name, which has been reversed
puts name