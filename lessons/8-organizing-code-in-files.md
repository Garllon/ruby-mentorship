# Lesson 8 - Organizing Code in Files

## Using code from another file

Sometimes a file is filled with too much code.
In situations like this it can be helpful to split things up into multiple files.
This is an example of how this could look like:

```ruby
# file1.rb
def greet(name)
  puts "Hi #{name}!"
end
```

```ruby
# file2.rb
require_relative 'file1'

greet('Vader')
```

Make sure to have both files in the same directory. You can then execute `file2.rb`:

```shell
ruby file2.rb
=> Hi Vader!
```

### Paths

Files can be required using `require` or `require_relative`. In order to differentiate the two it's helpful to understand how paths work.
You can think of paths as routes to a destination. They can be used to differentiate two files with the same names, that live in different directories.
E.g. `/path/to/file/data.txt` and `/path2/file/data.txt`. Both files have the exact same name, but since the path has been specified in full we can easily tell them apart.
Paths can also be specified based on the current directory. Use `pwd` to figure out the current directory.
If my current path is `/path/to` then I can refer to the first file with `/file/data.txt` as a relative path.
In order to specify a relative path to the other `data.txt` file we need to understand a special directory:
`..` refers to the directory that contains the current directory, and `../..` to the one above that. This can be chained indefinitely. 🤯
Therefore the relative path from `/path/to` to `/path2/file/data.txt` is `../../path2/file/data.txt`.

Last but not least there is the another special directy called `.`. That's simply your current directory. :)

TL;DR: Use `require` when specifying a full path (from the root of your file system) and `require_relative` for relative paths based on the current directory.

### Transitively Requiring Code

Given the files

```ruby
# basic_greeter.rb
def greet(name)
  "Hi #{name}!"
end
```

```ruby
# star_wars_greeter.rb
require_relative 'basic_greeter'

def wookie_greet(name)
  puts greet(name) + "Yuow"
end
```

```ruby
# greeter.rb
require_relative 'star_wars_greeter'

wookie_greet('Han') # using a method from the star_wars_greeter.rb
greet('Vader') # using a method from the basic_greeter.rb
```

Requiring code from other code works in a transitive fashion. Therefore any files that are required by a file that is already being required are available as well. So there is no need to require all the pieces individually if they already require each other, e.g. in a chain.
