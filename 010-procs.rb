=begin
    Procs
=end

numbersA = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbersB = [11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
numbersC = [21, 22, 23, 24, 25, 26, 27, 28, 29, 30]

# Create a proc. Store it in a variable
evens = Proc.new { |n| n % 2 == 0  }

# Use it and print each result
# .select() filters elements for which the condition is true
print numbersA.select(&evens)   # Output: [2, 4, 6, 8, 10]
print numbersB.select(&evens)   # Output: [12, 14, 16, 18, 20]
print numbersC.select(&evens)   # Output: [22, 24, 26, 28, 30]