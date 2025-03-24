=begin
    Hashes
    - Collection of key-value pairs, with unique keys
=end

# [CREATE]
# - Create an empty hash
a = Hash.new()

# - Create an empty hash with default value of 0 ("hash constructor notation")
b = Hash.new(0)

# - Create a hash with initial key-value pairs ("hash literal notation")
c = {
    "A" => 123,
    "B" => 342,
    "E" => 212,
}


# [ADD KEY:VALUE]
a["Satoshi"] = "Nakamoto"


# [PRINT]
puts c                          # {"A"=>123, "B"=>342, "E"=>212}


# [ITERATE]
# - Iterate over key:value pairs
c.each do |key,value|           # key, value are placeholders
    puts key + " " + value.to_s # A 123 \n B 324 \n E 212
end

# - Iterate over keys
c.each_key do |key|
    puts key
end

# - Iterate over values
c.each_value do |value|
    puts value
end


# [SELECT]
c_filtered = c.select{ |key, value| value > 250 }   
puts c_filtered                 # {"B"=>342}


# [SORT]
# - Sort ascending by values. "sort_by" returns a new array, doesn't modify original hash
d = c.sort_by do |key,value|
    value
end.to_h                        # Convert sorted array (array of arrays) to a hash

puts d                          # {"A"=>123, "E"=>212, "B"=>342}


# [DELETE]
# - Delete by key
d.delete("A")

puts                            # {"E"=>212, "B"=>342}