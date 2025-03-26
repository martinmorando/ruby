=begin

    Very Simple Calculator (work in progress)

    To do:
        - Ask for n1, n2 until valid n1, n2 are provided
        - Merge addition and subtraction?

    Ideas:
        - Allow the user to define the rounding error

    Pending questions:
        - Is it possible to add sound and/or colors?
        
=end


# [HELPER FUNCTIONS]

# Print welcome
def print_intro()
    puts "--------------------------------------------"
    puts "-----------VERY SIMPLE CALCULATOR-----------"
    puts "--------------------------------------------"
end

# Prompts user for 2 numbers, and returns array with floats
def prompt_user()
    puts "Enter number:"
    n1 = gets.chomp.to_f                # Convert to float
    puts "Enter number:"
    n2 = gets.chomp.to_f                # Convert to float
    return [n1.round(2), n2.round(2)]   # Round
end 

# Print result formatted
def print_result(result)
    puts "Result: #{result.round(2)}"
end



# [MAIN FUNCTION]
def start()

    # Display welcome
    print_intro()

    # Define accepted operations and initialize user_operation
    accepted_operations = [1, 2, 3, 4]
    user_operation = nil

    # Loop until a valid operation is selected
    # As long as this is false, continues iterating
    until accepted_operations.include?(user_operation.to_i)
        puts "Select operation:"
        puts "  [1] Addition"
        puts "  [2] Subtraction"
        puts "  [3] Multiplication"
        puts "  [4] Division"
    
        # Receive input from user
        user_operation = gets.chomp

        # If input is invalid, inform user
        if !accepted_operations.include?(user_operation.to_i)
            puts "Invalid operation. Try again."
        end
    end # End until

    # Valid operation selected
    # Ask the user to enter 2 numbers
    numbers = prompt_user()

    # Check what operation the user wants to execute
    case user_operation.to_i
        when 1
            # Addition
            result = numbers[0] + numbers[1]
        when 2
            # Subtraction
            result = numbers[0] - numbers[1]
        when 3
            # Multiplication
            result = numbers[0] * numbers[1]
        when 4 
            # Division
            # Handle division by 0
            if numbers[1] == 0
                puts "Can't divide by 0"
                return 0
            end
            result = numbers[0] / numbers[1]
    end # End case

    # Print result of the operation
    print_result(result)

end


# Start main function
start()