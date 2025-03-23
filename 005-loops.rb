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

# One-line until (notice no "end")
puts "YES" unless 2 > 3



# [Loop do]
i = 1
loop do    
    puts "loop do: #{i}"
    i += 1
    break if i == 11
end



# [.times iterator]
3.times { puts ".times" }



# [Iterate over an object]
arr = [1, 2, 3, 4, 5]

# - Alternative A
arr.each do |item|      # item is a placeholder
    puts "object.each (A): #{item}"
end

# - Alternative B
arr.each { |item|
    puts "object.each (B): #{item}"
}

# - Alternative C
arr.each { |item| puts "object.each (C): #{item}" }
