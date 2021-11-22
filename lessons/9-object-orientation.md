# English
## Lesson 9 - Object Orientation

### Classes

In many programming languages there are classes which define the properties of their instances, also known as objects.
Think of a class like a template or blueprint and an object as a specific thing of a certain class. For example we could define a class
called `Hardware` and one instance of this class could be a laptop. People are using different laptops,
but all of them are a kind of `Hardware`.
Another way to classify things is to think of classes as nouns (e.g. `Hardware`) since they tell you what things are and methods as verbs, because they usually make something do something.

In Ruby a class is defined as follows:

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

### Objects

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

# Deutsch
## Lesson 9 - Objektorientierung

### Klassen

In vielen Programmiersprachen gibt es Klassen welche die Eigenschaften von
Instanzen definieren, auch bekannt als Objekte.
Eine Klasse kann man sich als Blaupause oder Schablone für ein bestimmtes Ding
der Klasse vorstellen. Zum Beispiel könnten wir eine Klasse namens `Hardware`
definieren und eine Instanz davon könnte ein Laptop sein. Leute benutzen viele
verschiedene Laptops, aber alle Laptops haben gemein das sie eine Art von
`Hardware` sind.
Ein anderer Ansatz um in Klassen zu denken ist sie als Nomen zu verstehen,
wohingegen Methoden als Verben verstanden werden können, da diese in der Regel
dazu dienen etwas passieren zu lassen.

In Ruby wird eine Klasse wie folge definiert:

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

|Teil|Typ|Beschreibung|
|-|-|-|
|class|Schlüsselwort(keyword)|Schlüsselwort zum definieren der Klasse.|
|Hardware|Klassenname|Dein gewählter Name für die Klasse.|
|def initialize|"Konstruktor" Methode|Diese Methode wird aufgerufen um **neue** Instanzen einer Klasse zu erzeugen.|
|@weight|Instanzvariable|Eine Variable deren Wert sich je nach Instanz einer Klasse unterscheiden kann.|
|def weight|Methode|In diesem Beispiel kann die `weight`-Methode um das Gewicht eines konkreten `Hardware` Objekts abzufragen.|
|end|Schlüsselwort(keyword)|Schlüsselwort zum beenden einer Klasse. Genauso wie du auch eine Methode oder einen Block beenden würdest.|

Wenn du den Wert einer Instanzvariable setzen willst wird dafür eine
Setter-Methode benötigt:

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

Die neue `weight=`-Methode erlaubt es die `weight` Eigenschaft einer
existierenden Instanz zu verändern:

```ruby
laptop = Hardware.new(10)
laptop.weight # => 10
laptop.weight=(5)
laptop.weight # => 5
laptop.weight = 3
laptop.weight # => 3
```

`laptop.weight = 3` ist einfach nur eine andere Art um `laptop.weight=(5)` aufzurufen.
Das ist auch die übliche Art wie Setter-Methoden (deren Namen üblicherweise mit
  `=` endet) aufgerufen werden.
Diese Weise lässt den Methodenaufruf mehr danach aussehen als wenn der Wert
einer Variable gesetzt wird die zu einem Objekt gehört.

Klassen können auch benutzt werden um Code zu organisieren, z.b. indem Code zum
selben Thema in einer gemeinsamen Klasse steht.

### Objekte

Um eine neue Instanz einer Klasse zu erstellen muss auf ihr die `new` Methode
aufgerufen werden:

```ruby
laptop1 = Hardware.new(5)
laptop1.weight # => 5
```

Jede Klasse hat implizit eine `new` Methode. Um sie auszuschmücken muss jedoch,
nicht ganz so intuitiv, eine `initialize` Methode geschrieben werden. Ruby
kümmert sich darum `new` Methodenaufrufe magisch an die entsprechende
`initialize` Methode weiter zu reichen.

Jede Instanz einer Klasse kann als unabhängig von einander betrachtet werden:

```ruby
laptop1.weight # => 5 (from above)
laptop2 = Hardware.new(10)
laptop2.weight # => 10
laptop1 == laptop2 # => false
```

Wie du sehen kannst sind die beiden Instanzen nicht die selben. Die deutsche Sprache ist hier sehr hilfreich.
Sie sind zwar gleich, aber nicht die selben.
