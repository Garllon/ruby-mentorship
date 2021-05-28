# Lesson 7 - Revisiting strings and hashes

  - [Single Quotes and Double Quotes](#single-quotes-and-double-quotes)
  - [String Interpolation](#string-interpolation)
    - [Control Characters](#control-characters)
  - [Symbols](#symbols)

## Single Quotes and Double Quotes

Do you see the difference between:
```ruby
puts 'Hello World!'
Hello World!
```
and
```ruby
puts "Hello World!"
Hello World!
```

Strings can be defined either with single(') or double(") qoutes. In the example above this is maybe not reasonable, but there are more things where is can be reasonable.

## String Interpolation

String Interpolation is also only usable with double qoutes
```ruby
name = 'Darth Vader'
puts "Hello #{name}"
Hello Darth Vader
```
if you do the same thing with single quotes it will look like this:
```ruby
name = 'Darth Vader'
puts 'Hello #{name}'
Hello #{name}
```

### Control Characters

One control character for example is the `\n`, which is creating a line break. 
Double quoted strings are interpolated, so things like these are only possible with double quotes. 
```ruby
puts "Hello \nDarth Vader"
Hello
Darth Vader
```
if you do the same thing with single quotes it will look like this:
```ruby
puts 'Hello \nDarth Vader'
Hello \nDarth Vader
```

## Symbols

Symbols looks a little bit like Strings: `:hello`,
but there are some differences, for example can a symbol not contain any spaces or non alpanumeric characters. So this is not possible:
```ruby
:hello world
SyntaxError ((irb):25: syntax error, unexpected tIDENTIFIER, expecting end-of-input)
:hello world
       ^~~~~
```
Underscores(\_) are commonly used for symbols, as replacement for whitespaces. The keyword here is [snake_case](https://en.wikipedia.org/wiki/Snake_case) So it will look like this, for example:
```ruby
:hello_world
```

When the text is code then we use symbols, when the text is data then we use a string.

```ruby
shopping_list = { bread: 'half' }
```

These makes hashes easier to read and write, because you don't need to use fancy hash rockets.
