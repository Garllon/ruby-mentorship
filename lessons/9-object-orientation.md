# Lesson 9 - Object Orientation

## Classes

In many programming languages there are classes which define the properties of their instances, also known as objects.
Think of a class like a template or blueprint and an object as a specific thing of a certain class. For example we could define a class
called `Hardware` and one instance of this class could be a laptop. People are using different laptops,
but all of them are a kind of `Hardware`.
Another way to classify things is to think of classes as nouns (e.g. `Hardware`) since they tell you what things are and method as verbs, because they ususally make something do something.

In ruby a class is defined as follows:

```ruby
class Hardware
  def initialize(weight)
    @weight = weight
  end
  
  def weight
    @weight
  end
end
```

|Part|Type|Description|
|-|-|-|
|class|keyword|keyword to start a class|
|Hardware|class name|Your name of the class|
|def initialize|constructor method|This method is used to create **new** instances of the class|
|@weight|instance variable|A variable that only exists within a specific instance of a class|
|def weight|method|In this example the `weight` method can be used to get the value of the specific `Hardware`|
|end|keyword|Keyword to end a class. Just like you would end a method or a block for example.|

If you want to set the value of an instance variable then a setter method is required:

```diff
class Hardware
  def initialize(weight)
    @weight = weight
  end
  
  def weight
    @weight
  end
  
+ def weight=(new_weight)
+   @weight = new_weight
+ end
end
```

The new `weight=` method allows to set the `weight` attribute of an existing instance to a new value:

```ruby
laptop = Hardware.new(10)
laptop.weight # => 10
laptop.weight=(5)
laptop.weight # => 5
laptop.weight = 3
laptop.weight # => 3
```

`laptop.weight = 3` is just a fancy way of calling `laptop.weight=(5)`.
This is also how methods ending in `=` are usually called.
Calling the method this way makes it more look like a variable is being set that just happens to belong to an instance.

Classes can also help to organize code, e.g. by grouping code that revolves around the same topic into the same class.

## Objects

To create a new instance of a class call the `new` method on it:

```ruby
laptop1 = Hardware.new(5)
laptop1.weight # => 5
```

Every class implicitly has a `new` method. Counter-intuitively to implement it the code for it needs to
go into a method called `initialize`. Ruby magically directs a call of `new` on a class to its `initialize` method.

Each instance of a class can be considered independent of its likes:

```ruby
laptop1.weight # => 5 (from above)
laptop2 = Hardware.new(10)
laptop2.weight # => 10
laptop1 == laptop2 # => false
```

As you can see the two instances are not equal.
