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
# delivery.rb
require_relative 'shop'
new_items = ["milk", "eggs", "sausage", "juice", "cheese"]

def order_item(item)
  puts "Ordering #{item}"
  new_items.push(item)
end

def deliver_item
  new_items.each do |item|
    add_new_item(item)
  end
end
```

```ruby
# shop.rb
require_relative 'delivery'
shopping_list = ["milk", "eggs", "sausage", "juice", "cheese"]

def add_new_item(item)
  shopping_list.push(item)
end

def pick_item(item)
  if shopping_list.include?(item)
    return shopping_list.delete(item)
  else
    order_item(item)
  end
end
```

```ruby
# basket.rb
require_relative 'shop'

my_basket = []
my_basket.push(pick_item('banana'))
```
