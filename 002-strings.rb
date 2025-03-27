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


# "<=>": known as "three-way comparison" operator. AKA "spaceship operator"
# a <=> b, returns:
#   1 if a > b
#   0 if a == b
#  -1 if a < b
sentenceA = "Will bitcoin become a key tool in overthrowing tyrannical governments?"
sentenceB = "Will bitcoin become a key tool in tax resistance against abusive states?"
puts sentenceA <=> sentenceB       # Output: -1
puts sentenceB <=> sentenceA       # Output: 1


# Split
sentence = "Hello, everyone, today"
words = sentence.split(", ")       # ["Hello", "everyone", "today"]


# Remove new line (\n) character
annoyingString = "Hercules\n"
puts "Before chomp: '#{annoyingString}'"
annoyingString.chomp!
puts "After chomp: '#{annoyingString}'"


# Check if there's a substring inside string
if sentence.include? "every"
    puts "Yes, it's included."
end


# Replace substring (gsub: global substitution)
sentence.gsub!(/everyone/, "Satoshi")
puts sentence