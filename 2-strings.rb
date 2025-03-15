=begin
    Strings
=end

# Declare and assign a string variable
# Single or double quotation marks are valid
name = "Satoshi Nakamoto"
message = 'Bitcoin: A Peer-to-Peer Electronic Cash System'

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

# Remove new line (\n) character
annoyingString = "Hercules\n"
puts "Before chomp: '#{annoyingString}'"
annoyingString.chomp!
puts "After chomp: '#{annoyingString}'"