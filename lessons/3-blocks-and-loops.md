# Lesson 3 - Loops and Blocks

  - [Dot Operator](#dot-operator)
  - [Practice Time](#practice-time)
  - [Loops and Blocks](#loops-and-blocks)
    - [each](#each)

## Dot Operator

We call a method on something. 
```ruby
[6,2,4].length

# Return value
=> 3
```

We call the [`length`](https://rubyapi.org/2.7/o/array#method-i-length) method on an array. 

## Practice Time

[Even or Odd - Codewars](https://www.codewars.com/kata/53da3dbb4a5168369a0000fe)

Here are some possbile solutions, in case you are stuck.
<details>
<summary>Possible Solutions</summary>

Solution with what you learned so far

```ruby
def even_or_odd(number)
  # calculate the module of number,
  # if rest is 0 the number must be even, if not odd.
  if number % 2 == 0
    'Even'
  else
    'Odd'
  end
end
```
or use a method Ruby already has defined for us: [even?](https://rubyapi.org/2.7/o/integer#method-i-even-3F)

```ruby
def even_or_odd(number)
  # Ruby already has the logic implemented, as you can see by clicking the link above.
  if number.even?
    return 'Even'
  end
  'Odd'
end
```

</details>

## Loops and Blocks

### each

Loop with the [`each`](https://rubyapi.org/2.7/o/array#method-i-each) over an array of numbers(Integers)
```ruby
[1, 2, 3, 4, 5].each do |number|
  puts "Current iteration number is: #{number}"
end

# Output
Current iteration number is: 1
Current iteration number is: 2
Current iteration number is: 3
Current iteration number is: 4
Current iteration number is: 5

# Return value
=> [1, 2, 3, 4, 5]
```

|Part|Techinal word|Description|
|-|-|-|
|`[1, 2, 3, 4, 5]`|array|The array we like to iterate over.|
|`.each`|method call/predefined|We want do do something with each element of our array.|
|`do`|keyword|start of a block, equivalent to `{`|
|`\|number\|`|variable defination|This variable will store one element of the array in each iteration step.|
|`puts "Current iteration number is: #{number}"`|your definition of the method|Here you define what the method should do.|
|`end`|keyword|keyword to end a block, equivalent to `}`|

The block from before in the two different variants.
```ruby
[1, 2, 3, 4, 5].each do |number|
  puts "Current iteration number is: #{number}"
end
# or
[1, 2, 3, 4, 5].each { |number| puts "Current iteration number is: #{number}" }
```
