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
