# Lesson 2 - Methods

  - [DataTypes Continued](#datatypes-continued)
    - [Boolean](#boolean)
  - [Methods](#methods)

## DataTypes Continued

The first part of DataTypes you can find here:  [DataType](lessons/1-variables.md#datatypes)

### Boolean

```ruby
# A Boolean
number = 2
is_number_greater = 5 > number
puts is_number_greater
# => false
```

```ruby
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
```


## Methods
