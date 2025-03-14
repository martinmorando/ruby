=begin
    Logic 
=end

a = 1
b = 2

# Conditional
if a > b
    puts "a > b"
elsif a < b
	puts "a < b"
else
	puts "a == b"
end


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


# Boolean operators: &&, ||, ! 
i = !(2+2 == 4)             # false
j = (2+2 == 4) && (2+1 > 3) # false 
k = (2+2 == 4) || (2+1 > 3) # true