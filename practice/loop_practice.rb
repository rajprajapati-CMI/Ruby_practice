
# ### 1. `while` Loop
# The `while` loop executes a block of code as long as the condition is `true`.
i = 0
while i < 5 do
  puts i
  i += 1
end
# Output: 0 1 2 3 4

### 2. `until` Loop
# The `until` loop is the opposite of the `while` loop; it executes a block of code as long as the condition is `false`.
i = 0
until i == 5 do
  puts i
  i += 1
end
# Output: 0 1 2 3 4

### 3. `for` Loop
#The `for` loop iterates over a range or an array.
for i in 0..4 do
  puts i
end
# Output: 0 1 2 3 4
### 4. `each` Loop
#The `each` loop is used to iterate over elements in an array, hash, or range.
[0, 1, 2, 3, 4].each do |i|
  puts i
end
# Output: 0 1 2 3 4
### 5. `times` Loop
#The `times` loop executes a block of code a specified number of times.
5.times do |i|
  puts i
end
# Output: 0 1 2 3 4

### 6. `loop` Loop
#The `loop` loop will execute indefinitely unless stopped by a `break` statement.
i = 0
loop do
  puts i
  i += 1
  break if i >= 5
end
# Output: 0 1 2 3 4

### 7. `upto` and `downto` Loops
#The `upto` loop iterates from a starting number up to an ending number, and the `downto` loop iterates from a starting number down to an ending number.

0.upto(4) do |i|
  puts i
end
# Output: 0 1 2 3 4

4.downto(0) do |i|
  puts i
end
# Output: 4 3 2 1 0

### 8. `step` Loop
#The `step` loop iterates over a range, incrementing by a specified value.

0.step(10, 2) do |i|
  puts i
end
# Output: 0 2 4 6 8 10

### Example with Arrays and Hashes

# Array iteration
[1, 2, 3, 4, 5].each do |num|
  puts num
end
# Output: 1 2 3 4 5

# Hash iteration
{a: 1, b: 2, c: 3}.each do |key, value|
  puts "#{key}: #{value}"
end
# Output: a: 1 b: 2 c: 3

### Control Statements in Loops
# - `break`: Exits the loop early.
# - `next`: Skips the rest of the current iteration and moves to the next iteration.
# - `redo`: Repeats the current iteration from the start.
# break example
5.times do |i|
  break if i == 3
  puts i
end
# Output: 0 1 2

# next example
5.times do |i|
  next if i == 3
  puts i
end
# Output: 0 1 2 4

# redo example
i = 0
5.times do
  i += 1
  redo if i == 3
  puts i
end
# Output: 1 2 (infinite loop)
#Each looping construct has its own use cases, so you can choose the one that best fits your specific task.