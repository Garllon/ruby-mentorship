# This is a comment. A one line comment can be done with a #

### NUMBER ###

# Define a Integer with 1
a = 1
puts a

# Use the + operator
number1 = 5
number2 = 10

result = number1 + number2
puts result

# Use the / operator with float variables
number1 = 10.0
number2 = 5.0

result = number1 / number2
puts result

### TEXT ###

# Define a String with 'Hello World'

hello = 'Hello World'
puts hello

### ARRAY ###
#
# Merge different things together like fruits and vegetables
fruits = ['Apple','Orange']
vegetables = ['Cucumber', 'Tomate']

basket = fruits + vegetables
puts basket

# Remove fruits from basket
basket = ['Apple', 'Tomate', 'Orange']
fruits = ['Orange', 'Apple']

basket = basket - fruits
puts basket

# Use the index of lists
# With the following command we get the first element of the array.
puts fruits[0]
# => 'Orange'

### BOOLEAN ###

# Define a boolean

number = 2
is_number_greater = 5 > number
puts is_number_greater
# => false

# Define a if statement

# Boolean is_mentor is true

is_mentor = true

if is_mentor
  message = 'Yes you are a mentor.'
  puts message
end

# Boolean is_mentor is false and we have a else branch.

is_mentor = false

if is_mentor
  message = 'Yes you are a mentor.'
else
  message = 'No you are not a mentor, maybe you are a student.'
end
puts message

