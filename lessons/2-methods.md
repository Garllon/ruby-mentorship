# English

## Lesson 2 - Methods

  - [DataTypes Continued](#datatypes-continued)
    - [Boolean](#boolean)
  - [Methods](#methods)
    - [General](#general)
    - [Return value](#return-value)
    - [More fun with methods](#more-fun-with-methods)
  - [Homework](#homework)


### DataTypes Continued

The first part of DataTypes you can find here:  [DataType](/lessons/1-variables.md#datatypes)

#### Boolean

```ruby
# A Boolean
number = 2
is_number_greater = 5 > number
puts(is_number_greater)

# Output
true
 => nil
```

```ruby
is_delicious = true

if(is_delicious)
  message = "Yes this is delicious."
  puts(message)
end
# Output
Yes this is delicious.

# Boolean is_mentor is false and we have a else branch.
is_delicious = false

if(is_delicious)
  message = "Yes this is delicious."
else
  message = "No this is not delicious."
end
puts(message)

# Output
No this is not delicious.
=> nil
```

### Methods

#### General

A named group of ordered instructions. To execute muliple lines of code with one command.

A block of code that can take input values and return an output

```ruby
def addition(number1, number2)
  result = number1 + number2
  return result
end
```

|Part|Type|Description|
|-|-|-|
|def|keyword|keyword to start a method(abbrevation of define)|
|addition|method name|Your name of the method. We decided to name it addition here, to explain what the method will do.|
|(number1, number2)|Parameters|comma seperated list of variables. Not all methods have parameters|
|result = number1 + number2|your definition of the method|Here you define what the method should do.|
|return result|your definition of code 2|with the keyword `return` we tell the method to exit and transfer the value to the caller|
|end|keyword|keyword to end a method|

To Summarize:
```ruby
def method_name(parameters)
  # your code 
  # implementation here
end
```

Now lets call our method from above:
```ruby
#  Use the method_name and add your parameters.
addition(1, 5)
=> 6
```

#### Return value

Every method returns a value as you have already seen above by the keyword `return`. For example our `puts`, what we used in a previous session.
```ruby
puts("test")
test
=> nil
```

Here we call the predefined method `puts` with the parameter `"test"`. It is printing out the parameter and then returns `nil`.
The `irb` is displaying the return value with a `=>`([hash rocket](https://en.wikipedia.org/wiki/Fat_comma#Ruby)) prefix.

By default ruby returns the last value in a method.
These two are equivalent.

with `return` keyword: 
```ruby
def six
  a = 6
  return a
end

## call the method
six
=> 6
```

without `return` keyword, default last value of method.
```ruby
# this

def six
  a = 6
  a
end

## call the method
six
=> 6
```

Leaving out the `return` keyword is encouraged whenever possible. Usally the `return` keyword is used to exit a method early.

```ruby
def six(number)
  if number == 6
    return "Yeah it is a six."
  end
  
  "Sadly no six." 
end
```

#### More fun with methods

What do you think is the outcome of this code:
```ruby
def add_one(number)
  number + 1
end

def add_two(number)
  number = add_one(number)
  add_one(number)
end

puts add_two(3)
```

<details>
<summary>Result</summary>

```ruby
5
```

</details>

### Homework

[CodeWars - Can we divide it?](https://www.codewars.com/kata/5a2b703dc5e2845c0900005a/train/ruby)

# German

## Lesson 2 - Methods

  - [DataTypen Fortsetzung](#datatypen-fortsetzung)
    - [Boolean](#boolean)
  - [Methoden](#methoden)
    - [Allgemein](#allgemein)
    - [Rückgabewert](#rückgabewertreturn-value)
    - [Mehr Spass mit Methoden](#mehr-spass-mit-methoden)
  - [Hausaufgaben(Optional)](#hausaufgabenoptional)


### Datentypen Fortsetzung

Der erste Teil zu Datentypen befindet sich hier:  [Datentypen](/lessons/1-variables.md#datentypen)

#### Boolean

```ruby
# Ein Boolean
number = 2
is_number_greater = 5 > number
puts(is_number_greater)

# Ausgabe
true
 => nil
```

```ruby
is_delicious = true

if(is_delicious)
  message = "Yes this is delicious."
  puts(message)
end
# Ausgabe
Yes this is delicious.
=> nil

# Boolean is_mentor is false and we have a else branch.
is_delicious = false

if(is_delicious)
  message = "Yes this is delicious."
else
  message = "No this is not delicious."
end
puts(message)

# Ausgabe
No this is not delicious.
=> nil
```

### Methoden

#### Allgemein

Ein benannte Gruppe von auf einanderfolgenden Anweisungen. Zum ausfü
hren mehrer Zeilen mit einem Befehl.

Ein Block von Code der Eingabewerte(input) animmt und Ausgabewerte(output) zurü
ck gibt.

```ruby
def addition(number1, number2)
  result = number1 + number2
  return result
end
```

|Teil|Typ|Beschreibung|
|-|-|-|
|def|Schlüsselwort(keyword)|Das Schlüsselwort zum beginnen einen Methode.(Abkürzung für das englische Wort `define`.)|
|addition|Methodenname|Der name der Methode. Wir haben uns entschieden sie `addition` zu nennen, damit ihre Funktion klar ist.|
|(number1, number2)|Parameter|Komma seperierte Liste von Eingabevariablen(parameters). Nicht alle Methoden haben Eingabevariablen.|
|result = number1 + number2|Der Inhalt deiner Methode|Hier kann beliebiger Code stehen.|
|return result|Der Inhalt deiner Methode|Mit dem Keyword `return` sagen wir der Methode was sie an den Aufrufenden zurückgeben soll.|
|end|Schlüsselwort(keyword)|Das Schlüsselwort zum schließen der Methode.|

Zusammengefasst:
```ruby
def method_name(parameters)
  # Deine Code Implementierung
end
```

Nun rufen(call) wir unsere Methoden von oben auf.
```ruby
# Benutze den Methodenname und füge die Eingabevariablen hinzu.
addition(1, 5)
=> 6
```

#### Rückgabewert(Return Value)

Jede Methode hat einen Rückgabewert(Return value) wie du bereits oben mit dem Schlüsselwort(keyword) `return` gesehen hast. Zum Beispiel unser `puts` was wir bereits benutzt haben.
```ruby
puts("test")
test
=> nil
```

Hier rufen wir die vordefinierte Methode `puts` mit dem Eingabewert `"test"`
Die `irb` zeigt die Rückgabewerte hinter einer `=>`([hash rocket](https://en.wikipedia.org/wiki/Fat_comma#Ruby)).

Standardmäßig gibt ruby den letzten Wert der Methode zurück.
Die folgenden Codebeispiele liefern das gleiche Ergebnis:

mit `return` Schlüsselwort(keyword): 
```ruby
def six
  a = 6
  return a
end

## rufe die Methode auf
six
=> 6
```

ohne `return` Schlüsselwort(keyword), standardmäßig der letzte Wert der Methode.
```ruby
# this

def six
  a = 6
  a
end

## rufe die Methode auf
six
=> 6
```

Typischerweise lässt man das `return` Schlüsselwort am Ende der Methode weg. Üblicherweise wird es benutzt wenn man die Methode früher verlassen will.

```ruby
def six(number)
  if number == 6
    return "Yeah, es ist eine sechs."
  end
  
  "Leider keine sechs." 
end
```

#### Mehr Spass mit Methoden

Was denkst du kommt hier am Ende raus:
```ruby
def add_one(number)
  number + 1
end

def add_two(number)
  number = add_one(number)
  add_one(number)
end

puts add_two(3)
```

<details>
<summary>Auflösung</summary>

```ruby
5
```

</details>

### Hausaufgaben(Optional)

[CodeWars - Can we divide it?](https://www.codewars.com/kata/5a2b703dc5e2845c0900005a/train/ruby)
