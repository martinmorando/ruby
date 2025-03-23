=begin
    Logic 
=end

a = 1
b = 2

# If
if a > b
    puts "a > b"
elsif a < b
	puts "a < b"
else
	puts "a == b"
end


# One-line if (notice no "end")
puts "a < b" if a < b 


# Ternary operator
c = false
puts c ? "c is true" : "c is false"


# Unless: executes code if condition is false
unless a == 2
    puts "a is not 2"
else
    puts "a is 2"
end


# Unless: shorthand syntax
puts "The condition evaluated is false" unless b == 4 


# Comparison operators
c = a == 1  # true
d = a != 1  # false
e = a > 1   # false
f = a >= 1  # true
g = a < 1   # false
h = a <= 1  # false

# "<=>": known as "three-way comparison" operator. AKA "spaceship operator"
# a <=> b, returns:
#   1 if a > b
#   0 if a == b
#  -1 if a < b
i = 4 <=> 3     # 1

# Boolean operators: &&, ||, ! 
j = !(2+2 == 4)             # false
k = (2+2 == 4) && (2+1 > 3) # false 
l = (2+2 == 4) || (2+1 > 3) # true