=begin
    Loops
=end

# [FOR LOOP]
# - Alternative A: including range
for i in 1..10
    puts "for loop (A): #{i}"
end

# - Alternative B: excluding range
for i in 1...11
    puts "for loop (B): #{i}"
end



# [WHILE LOOP]
i = 1
while i <= 10
    puts "while loop: #{i}"
    i += 1    # Post-increment operator (i++) does not exist in Ruby
end



# [UNTIL LOOP]
i = 1
until i == 11
    puts "until loop: #{i}"
    i += 1
end

# One-line until (notice no "end")
puts "YES" unless 2 > 3



# [LOOP DO]
i = 1
loop do    
    puts "loop do: #{i}"
    i += 1
    break if i == 11
end



# [.TIMES ITERATOR]
3.times { puts ".times" }



# [UP TO & DOWN TO]
# - Numbers
2.upto(5) { |i| print i, " " }       # 2, 3, 4, 5
3.downto(1) { |i| print i, " "}      # 3, 2, 1

# - Characters
"c".upto("g") { |i| print i, " " }   # c, d, e, f, g
# .downto() is NOT VALID for characters: "c".downto("a") { |i| print i, " " }



# [ITERATE OVER AN OBJECT]
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
