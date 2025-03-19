=begin
    Methods
=end

# Define a method with 2 parameters
def sumExample(a, b)
    return a + b
end

puts sumExample(2, 3)   # 5


# Splat arguments: the method can receive 1 or more arguments
def splatExample(*b)
    b.each do |item|
        puts "Item: #{item}"
    end
    return 0
end

splatExample("Bitcoin", "Satoshi")