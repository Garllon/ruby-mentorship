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


<table>
  <tr>
    <th>Part</th>
    <th>Technical Word</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>
       <pre lang="ruby">
          [1, 2, 3, 4, 5]
       </pre>
    </td>
    <td>array</td>
    <td>The array we like to iterate over.</td>
  </tr>
    <tr>
      <td>
         <pre lang="ruby">
            .each
         </pre>
      </td>
      <td>method call/predefined</td>
      <td>We want do do something with each element of our array.</td>
  </tr>
