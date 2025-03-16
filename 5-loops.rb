=begin
    Loops
=end

# [For loop]
# - Alternative A: including range
for i in 1..10
    puts "for loop (A): #{i}"
end

# - Alternative B: excluding range
for i in 1...11
    puts "for loop (B): #{i}"
end



# [While loop]
i = 1
while i <= 10
    puts "while loop: #{i}"
    i += 1    # Post-increment operator (i++) does not exist in Ruby
end



# [Until loop]
i = 1
until i == 11
    puts "until loop: #{i}"
    i += 1
end



# [Loop do]
i = 1
loop do    
    puts "loop do: #{i}"
    i += 1
    break if i == 11
end