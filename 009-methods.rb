=begin
    Methods
=end

# Define a method with 2 parameters, one default
def sumExample(a, b=8)
    return a + b
end

puts sumExample(2, 3)   # 5
puts sumExample(2)      # 10


# Splat arguments: the method can receive 1 or more arguments
def splatExample(*b)
    # Iterate over each item in the array 
    b.each do |item|
        puts "Item: #{item}"
    end
    return 0
end

splatExample("Bitcoin", "Satoshi")