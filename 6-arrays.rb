=begin
    Arrays
=end

# [One-dimensional arrays]
# - Create
arr = [1, 2, 3, 4]                  # Array of numbers
arr2 = ["A", "B", "C", "D"]         # Array of strings
arr3 = [true, false, true, true]    # Array of booleans

# - Access by index
puts arr[2]                         # 3


# [Multi-dimensional arrays]
# - Create
mdArr = [[1, 2, 3, 4], ["A", "B", "C"]]

# - Access by index
puts mdArr[1][2]                    # "C"