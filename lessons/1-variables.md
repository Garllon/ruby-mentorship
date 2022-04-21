# English
## Lesson 1 - Variables - DataTypes

- [Variables](#variables)
  - [Number](#number)
  - [Text(String)](#textstring)
  - [List(Array)](#listarray)
- [DataTypes](#datatypes)
- [Examples](#examples)

### Variables

Every practical programming language has a feature called variables.
This is basically the same concept that you might know from math, although in
Ruby there are different kinds of variables (you will get to know another one in
a couple lessons).

In Ruby you can assign a name to something (an object) by using the so called
assignment operator =. On the left side you have the variable name and on the
right side, what you like to assign.

#### Number

Define a number.
```ruby
# A number
number = 1
```

Calculcate with numbers.
```ruby
number1 = 5
number2 = 10

# Use the + operator
result = number1 + number2
puts result 
# => 15

# Use the / operator
result = number1 / number2
puts result 
# => 0
```

Why is the last result 0 instead of 0.5 as expected?
Integer is limited to whole numbers. If we want to do this operation correctly then
we need floating point numbers. So the same operation as before, except this time
we define the numbers as floats.

```ruby
number1 = 5.0
number2 = 10.0

# Use the / operator
result = number1 / number2
puts result 
# => 0.5
```

Why not always use floats you ask? Floats need more
resources and we like to optimize code.
Think power usage. Your smartphone can live longer before you need to recharge. :)

#### Text(String)

```ruby
# A Text
text = 'Hallo World'
```

You can also merge two texts together:
```ruby
# One Text
text1 = 'Hello'
text2 = 'World'
puts text1 + text2
```

#### List(Array)

```ruby
# Merge different things together like fruits and vegetables
fruits = ['Apple','Orange']
vegetables = ['Cucumber', 'Tomate']

basket = fruits + vegetables

# Remove fruits from basket
basket = ['Apple', 'Tomate', 'Orange']
fruits = ['Orange', 'Apple']

basket = basket - fruits
```

##### Use the index of lists
With the following command we get the first element of the array.
```ruby
puts fruits[0]
# => 'Orange'

```

### DataTypes

- Number (Integer, Float, ..)
- Text (String)
- List (Array)
- Boolean (true/false) Will be handled in lesson-2
- Nil (Nothing, Empty)

### Examples

[Ruby - Variables](/lessons/examples/1_variables.rb)

# German
## Session 1 - Variablen - Datentypen

- [Variablen](#variablen)
  - [Zahlen](#zahlen)
  - [Text(String)](#textestrings)
  - [Listen(Array)](#listenarrays)
- [Datentypen](#datentypen)
- [Beispiele](#beispiele)

### Variablen

Jede praktische Programmiersprache bringt Variablen mit sich.
In der Regel funktionieren sie analog wie in der Mathematik.
In Ruby gibt es eine Reihe verschiedener Arten von Variablen,
die wir nacheinander kennenlernen werden.

Variablen kann man sich als Kisten vorstellen, anfangs sind sie leer,
man kann beliebige Sachen hinein tun und wenn
man zu viele davon hat wird es unübersichtlich wenn man sie nicht
beschriftet.

In Ruby weist man einen Namen und Inhalt einer Variable mit dem
Zuweisungsoperator `=` zu. Dabei steht auf der linken Seite der
Name der Variable, in der Mitte der Zuweisungsoperator `=` und auf
der rechten Seite der gewünschte Inhalt.

#### Zahlen

Eine Zahl einer Variable zuweisen:
```ruby
# A number
number = 1
```

Mit Zahlen rechnen:
```ruby
number1 = 5
number2 = 10

# Use the + operator
result = number1 + number2
puts result
# => 15

# Use the / operator
result = number1 / number2
puts result 
# => 0
```

Warum ist am Ende das Ergebnis 0 und nicht 0.5 wie erwartet?
Sowohl `number1` als auch `number2` sind vom Datentyp Integer
und damit auf ganze Zahlen beschränkt. Um die Division wie erwartet
durchzuführen müssen Gleitkommazahlen verwendet werden

```ruby
number1 = 5.0
number2 = 10.0

# Use the / operator
result = number1 / number2
puts result 
# => 0.5
```

Warum also nicht immer Gleitkommazahlen benutzen?
Sie verbrauchen etwas mehr Ressourcen und sind ironischerweise
nicht immer so genau wie Ganzzahlen.

#### Texte(Strings)

```ruby
# A Text
text = 'Hello World'
```

Texte können auch miteinander kombiniert werden:
```ruby
text1 = 'Hello'
text2 = 'World'
puts text1 + text2
# => 'Hello World'
```

#### Listen(Arrays)

Listen werden meistens als Arrays bezeichnet und werden mit `[]`
definiert. Arrays können beliebige Daten enthalten, meistens
enthalten sie jedoch Daten vom selben Typ:

```ruby
# Empty array
empty = []

# Merge different things together like fruits and vegetables
fruits = ['apple','orange']
vegetables = ['cucumber', 'tomato']

basket = fruits + vegetables

# Remove fruits from basket
basket = ['apple', 'tomate', 'orange']
fruits = ['orange', 'apple']

basket = basket - fruits
```

##### Teile von Listen
Folgendermaßen kann auf einzelne Elemente eines Arrays zugegriffen werden:
```ruby
puts fruits[0]
# => 'orange'
```

### Datentypen

- Zahlen (Ganzzahl(Integer), Gleitkommazahl(Float), ..)
- Text (String)
- Liste (Array)
- Boolean (true/false) -> werden beim nächsten Mal thematisiert
- Nil (Nichts, Leer)

### Beispiele

[Ruby - Variablen](/lessons/examples/1_variables.rb)
