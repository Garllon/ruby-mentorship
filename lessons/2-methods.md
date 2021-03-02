# Lesson 2 - Methods

  - [DataTypes Continued](#datatypes-continued)
    - [Boolean](#boolean)
  - [Methods](#methods)
    - [General](#general)
    - [Return values](#return-values)
    - [More fun with methods](#more-fun-with-methods)
  - [Homework](#homework)


## DataTypes Continued

The first part of DataTypes you can find here:  [DataType](lessons/1-variables.md#datatypes)

### Boolean

```ruby
# A Boolean
number = 2
is_number_greater = 5 > number
puts(is_number_greater)

# Output
true
 => nil
```

```ruby
is_mentor = true

if(is_mentor)
  message = 'Yes you are a mentor.'
  puts(message)
end
# Output
Yes you are a mentor.
=> nil

# Boolean is_mentor is false and we have a else branch.
is_mentor = false

if(is_mentor)
  message = 'Yes you are a mentor.'
else
  message = 'No you are not a mentor, maybe you are a student.'
end
puts(message)

# Output
No you are not a mentor, maybe you are a student.
=> nil
```

## Methods

### General

A named group of ordered instructions. To execute muliple lines of code with one command.

A block of code that can take input values and return an output

```ruby
def addition(number1, number2)
  result = number1 + number2
  return result
end
```

|Part|Type|Description|
|-|-|-|
|def|keyword|keyword to start a method(abbrevation of define)|
|addition|method name|Your name of the method. We decided to name it addition here, to explain what the method will do.|
|(number1, number2)|Parameters|comma seperated list of variables. Not all methods have parameters|
|result = number1 + number2|your definition of the method|Here you define what the method should do.|
|return result|your definition of code 2|with the keyword `return` we tell the method to exit and transfer the value to the caller|
|end|keyword|keyword to end a method|

To Summarize:
```ruby
def method_name(parameters)
  # your code 
  # implementation here
end
```

Now lets call our method from above:
```ruby
#  Use the method_name and add your parameters.
addition(1, 5)
=> 6
```

### Return values

Every method returns a value as you have already seen above by the keyword `return`. For example our `puts`, what we used in a previous session.
```ruby
puts('test')
test
=> nil
```

Here we call the predefined method `puts` with the parameter `'test'`. It is printing out the parameter and then return `nil`.
The `irb` is displaying the return value with a `=>`([hash rocket](https://en.wikipedia.org/wiki/Fat_comma#Ruby)) prefix.

### More fun with methods

What do you think is the outcome of this code:
```ruby
def add_one(number)
  number + 1
end

def add_two(number)
  number = add_one(number)
  add_one(number)
end

puts add_two(3)
```

<details>
<summary>Result</summary>

```ruby
5
```

</details>

## Homework

[CodeWars - Can we divide it?](https://www.codewars.com/kata/5a2b703dc5e2845c0900005a/train/ruby)
