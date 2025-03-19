=begin
    Sorting arrays
=end

numbersA = [2, 6, 1, 3, 9, 4, 5]
numbersB = [3, 5, 2, 2, 0, 5, 4]

# [Ascending order]
# - Alternative A
print numbersA.sort!        # [1, 2, 3, 4, 5, 6, 9]

# - Alternative B
numbersB.sort! { |a, b| a <=> b }
print numbersB              # [0, 2, 2, 3, 4, 5, 5]


# [Descending order]
numbersB.sort! { |a, b| b <=> a }
print numbersB              # [5, 5, 4, 3, 2, 2, 0]