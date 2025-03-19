=begin
    Hashes
    - Collection of key-value pairs, with unique keys
=end

# [Create]
# - Create an empty hash
a = Hash.new()

# - Create an empty hash with default value of 0
b = Hash.new(0)

# - Create a hash with initial key-value pairs
c = {
    "A" => 123,
    "B" => 342,
    "E" => 212,
}


# [Add key:value]
a["Satoshi"] = "Nakamoto"


# [Print to console]
puts c                          # {"A"=>123, "B"=>342, "E"=>212}


# [Iterate]
c.each do |key,value|           # key, value are placeholders
    puts key + " " + value.to_s # A 123 \n B 324 \n E 212
end


# [Sort]
# - Sort ascending by values. "sort_by" returns a new array, doesn't modify original hash
d = c.sort_by do |key,value|
    value
end.to_h                        # Convert sorted array (array of arrays) to a hash

puts d                          # {"A"=>123, "E"=>212, "B"=>342}