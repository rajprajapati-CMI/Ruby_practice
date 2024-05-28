# way of initializing Array
# 1. aaray = Array.new
# 2. array = Array.new(size)
# 3.array = [];


# most common used method for an array 
# sort , reverse , include, push , pop, shift , unshift , flatten , compact , product , length .

array = []
array = [1, 2, 3, 4, 5]
array = Array.new
array = Array.new(5) # creates an array with 5 nil elements
array = Array.new(5, "default") # creates an array with 5 elements, all initialized to "default"
array = %w[apple banana cherry] # equivalent to ["apple", "banana", "cherry"]
array = Array.new(5) { |index| index * 2 } # creates [0, 2, 4, 6, 8]
array = (1..5).to_a # creates [1, 2, 3, 4, 5]
array = ('a'..'e').to_a # creates ["a", "b", "c", "d", "e"]

#most common used Mthod in Ruby 

### 1. `push` / `<<`
#Adds elements to the end of an array.
array = [1, 2, 3]
array.push(4)
array << 5
# array is now [1, 2, 3, 4, 5]
### 2. `pop`
#Removes the last element from an array and returns it.

array = [1, 2, 3, 4, 5]
last_element = array.pop
# last_element is 5, array is now [1, 2, 3, 4]
#

### 3. `shift`
#Removes the first element from an array and returns it.

#
array = [1, 2, 3, 4, 5]
first_element = array.shift
# first_element is 1, array is now [2, 3, 4, 5]
#

### 4. `unshift`
#Adds elements to the beginning of an array.

#
array = [2, 3, 4, 5]
array.unshift(1)
# array is now [1, 2, 3, 4, 5]
#

### 5. `map` / `collect`
#Creates a new array containing the values returned by the block.

#
array = [1, 2, 3, 4, 5]
new_array = array.map { |n| n * 2 }
# new_array is [2, 4, 6, 8, 10]
#

### 6. `select` / `filter`
#Creates a new array containing elements that match the condition in the block.

#
array = [1, 2, 3, 4, 5]
even_numbers = array.select { |n| n.even? }
# even_numbers is [2, 4]
#

### 7. `reject`
#Creates a new array excluding elements that match the condition in the block.

#
array = [1, 2, 3, 4, 5]
non_even_numbers = array.reject { |n| n.even? }
# non_even_numbers is [1, 3, 5]
#

### 8. `each`
#Iterates over each element in the array, executing the block for each element.

#
array = [1, 2, 3, 4, 5]
array.each { |n| puts n }
# Output: 1 2 3 4 5
#

### 9. `include?`
#Checks if an array contains a specific element.

#
array = [1, 2, 3, 4, 5]
array.include?(3) # returns true
array.include?(6) # returns false
#

### 10. `find` / `detect`
#Returns the first element that matches the condition in the block.

#
array = [1, 2, 3, 4, 5]
first_even_number = array.find { |n| n.even? }
# first_even_number is 2
#

### 11. `compact`
#Returns a new array with all `nil` elements removed.

#
array = [1, nil, 2, nil, 3]
compact_array = array.compact
# compact_array is [1, 2, 3]
#

### 12. `flatten`
#Returns a new array that is a one-dimensional flattening of the array.

#
array = [1, [2, 3], [4, [5, 6]]]
flattened_array = array.flatten
# flattened_array is [1, 2, 3, 4, 5, 6]
#

### 13. `uniq`
#Returns a new array with duplicate elements removed.

#
array = [1, 2, 2, 3, 3, 3]
unique_array = array.uniq
# unique_array is [1, 2, 3]
#

### 14. `sort`
##Returns a new array with elements sorted.

#
array = [3, 1, 4, 1, 5, 9, 2]
sorted_array = array.sort
# sorted_array is [1, 1, 2, 3, 4, 5, 9]
#

### 15. `reverse`
#Returns a new array with the elements in reverse order.

#
array = [1, 2, 3, 4, 5]
reversed_array = array.reverse
# reversed_array is [5, 4, 3, 2, 1]
#

### 16. `join`
#Returns a string created by converting each element of the array to a string, separated by a specified separator.

#
array = [1, 2, 3, 4, 5]
joined_string = array.join('-')
# joined_string is "1-2-3-4-5"
#

### 17. `slice`
#Returns a subarray specified by a range or index.

#
array = [1, 2, 3, 4, 5]
sliced_array = array.slice(1, 3)
# sliced_array is [2, 3, 4]
#

### 18. `zip`
#Combines elements of the receiver with corresponding elements from each argument.

#
array1 = [1, 2, 3]
array2 = ['a', 'b', 'c']
zipped_array = array1.zip(array2)
# zipped_array is [[1, 'a'], [2, 'b'], [3, 'c']]