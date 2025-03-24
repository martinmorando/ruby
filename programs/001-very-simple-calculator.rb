=begin

    Very Simple Calculator (work in progress)

    To do:
        - Validate input
        - Loop until valid a option is selected
        - Handle division by 0
        - Merge addition and subtraction?
        - Use a function to print result 

    Ideas:
        - Allow the user to define the rounding error

    Pending questions:
        - Is it possible to add sound and/or colors?
        
=end


# [HELPER FUNCTIONS]

# Prompts user for 2 numbers, and returns array with floats
def prompt_user()
    puts "Enter number:"
    n1 = gets.chomp.to_f                # Convert to float
    puts "Enter number:"
    n2 = gets.chomp.to_f                # Convert to float
    return [n1.round(2), n2.round(2)]   # Round
end 




puts "--------------------------------------------"
puts "-----------VERY SIMPLE CALCULATOR-----------"
puts "--------------------------------------------"
puts "Select operation:"
puts "  [1] Addition"
puts "  [2] Subtraction"
puts "  [3] Multiplication"
puts "  [4] Division"

user_operation = gets.chomp

case user_operation.to_i
    when 1
        numbers = prompt_user()
        result = numbers[0] + numbers[1]
        puts "Result: #{result.round(2)}"

    when 2
        numbers = prompt_user()
        result = numbers[0] - numbers[1]
        puts "Result: #{result.round(2)}"

    when 3
        numbers = prompt_user()
        result = numbers[0] * numbers[1]
        puts "Result: #{result.round(2)}"

    when 4
        numbers = prompt_user()
        result = numbers[0] / numbers[1]
        puts "Result: #{result.round(2)}"

    when 21000000
        puts "You are awake, Neo..."

    else
        puts "Invalid option. Goodbye!"

end