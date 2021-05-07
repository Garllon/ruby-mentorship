# Lesson 7

## Single Quotes and Double Quotes

Do you see the differene between:
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

### String Interpolation

#### Control Characters

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

#### String Interpolation

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

## Symbols

Symbols looks a little bit like Strings: `:hello`,
but there are some difference, for example can a symbol not contain any spaces or non alpanumeric characters. So this is not possible:
```ruby
:hello world
SyntaxError ((irb):25: syntax error, unexpected tIDENTIFIER, expecting end-of-input)
:hello world
       ^~~~~
```
Underscores(\_) are commonly used for symbols, as replacment for whitespaces. The keyword this is [snake_case](https://en.wikipedia.org/wiki/Snake_case) So it will look oike this, for example:
```ruby
:hello_world
```

When the text code is then we use symbols, when the text data is then we use a string.

```ruby
shopping_list = { bread: 'half' }
```

These makes hashes easier to read and write, because you don't need to use fancy hash rockets.
