=begin
    OOP
=end

$company = "M Inc."                 # Global variable

class Car
    @@company = "M Inc."            # Class variable
    @@cars_counter = 0              # Class variable

    # Constructor
    def initialize(plate, color)
        @plate = plate              # Instance variable
        @color = color              # Instance variable
        @@cars_counter += 1
    end

    # Getter
    def color
        @color
    end

    # Class method
    def self.cars_counter
        return @@cars_counter
    end
end

# Output global variable
puts $company                       # Output: M Inc.

# Create instance
my_car = Car.new("21BTC", "invisible")

# Use getter to access property
puts my_car.color                   # Output: invisible

# Use class method
puts Car.cars_counter               # Output: 1