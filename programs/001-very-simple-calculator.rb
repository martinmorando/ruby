=begin

    Very Simple Calculator (work in progress)

    To do:
        - Ask for n1, n2 until valid n1, n2 are provided

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
    print " Enter number #1: "
    n1 = gets.chomp.to_f                # Convert to float
    print " Enter number #2: "
    n2 = gets.chomp.to_f                # Convert to float
    return [n1.round(2), n2.round(2)]   # Round
end 

# Print result formatted
def print_result(result)
    puts ""
    puts "          Result: #{result.round(2)}"
end



# [MAIN FUNCTION]
def start()

    # Display welcome
    print_intro()

    # Define accepted operations and initialize user_operation
    accepted_operations = [1, 2, 3]
    user_operation = nil

    # Loop until a valid operation is selected
    # As long as this is false, continues iterating
    until accepted_operations.include?(user_operation)
        puts "Available operations:"
        puts " [1] Addition / Subtraction"
        puts " [2] Multiplication"
        puts " [3] Division"
        puts ""
        print "Select operation: "
    
        # Receive input from user
        user_operation = gets.chomp.to_i

        # If input is invalid, inform user
        if !accepted_operations.include?(user_operation)
            puts "Invalid operation. Try again."
        end
    end # End until

    # Valid operation selected
    # Ask the user to enter 2 numbers
    numbers = prompt_user()

    # Check what operation the user wants to execute
    case user_operation.to_i
        when 1
            # Addition / Subtraction
            result = numbers[0] + numbers[1]
        when 2
            # Multiplication
            result = numbers[0] * numbers[1]
        when 3
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