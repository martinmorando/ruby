=begin
    Sorting arrays
=end

numbersA = [2, 6, 1, 3, 9]
numbersB = [3, 5, 6, 2, 0]

# [Ascending order]
# - Alternative A
print numbersA.sort!        # [1, 2, 3, 6, 9]

# - Alternative B
numbersA.sort! { |a, b| a <=> b }
print numbersA              # [1, 2, 3, 6, 9]



# [Reverse]
print numbersB.reverse!     # [0, 2, 6, 5, 3]



# [Descending order]
numbersB.sort! { |a, b| b <=> a }
print numbersB               # [6, 5, 3, 2, 0]