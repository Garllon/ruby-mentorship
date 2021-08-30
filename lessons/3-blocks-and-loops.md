# English
## Lesson 3 - Blocks and Loops

  - [Dot Operator](#dot-operator)
  - [Practice Time](#practice-time)
  - [Loops and Blocks](#loops-and-blocks)
    - [each](#each)

### Dot Operator

We call a method on something. 
```ruby
[6,2,4].length

# Return value
=> 3
```

We call the [`length`](https://rubyapi.org/2.7/o/array#method-i-length) method on an array. 

### Practice Time

[Even or Odd - Codewars](https://www.codewars.com/kata/53da3dbb4a5168369a0000fe)

Here are some possbile solutions, in case you are stuck.
<details>
<summary>Possible Solutions</summary>

Solution with what you learned so far

```ruby
def even_or_odd(number)
  # calculate the module of number,
  # if rest is 0 the number must be even, if not odd.
  if(number % 2 == 0)
    'Even'
  else
    'Odd'
  end
end
```
or use a method Ruby already has defined for us: [even?](https://rubyapi.org/2.7/o/integer#method-i-even-3F)

```ruby
def even_or_odd(number)
  # Ruby already has the logic implemented, as you can see by clicking the link above.
  if(number.even?)
    return 'Even'
  end
  'Odd'
end
```

</details>

### Loops and Blocks

#### each

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

|Part|Type|Description|
|-|-|-|
|`[1, 2, 3, 4, 5]`|array|The array we like to iterate over.|
|`.each`|method call/predefined|We want do something with each element of our array.|
|`do`|keyword|start of a block, equivalent to `{`|
|`\|number\|`|variable definition|This variable will store one element of the array in each iteration step.|
|`puts "Current iteration number is: #{number}"`|your definition of the method|Here you define what the method should do.|
|`end`|keyword|keyword to end a block, equivalent to `}`|

The block from before in the two different variants.
```ruby
[1, 2, 3, 4, 5].each do |number|
  puts "Current iteration number is: #{number}"
end
# or
[1, 2, 3, 4, 5].each { |number| puts "Current iteration number is: #{number}" }
```

# German
## Lesson 3 - Blöcke und Schleifen

  - [Dot Operator](#dot-operator-1)
  - [Practice Time](#und-jetzt-du)
  - [Loops and Blocks](#schleifen-und-blöcke)
    - [each](#each-1)

### Dot Operator

Mit dem `.` Operator können Methoden auf etwas aufgerufen werden: 
```ruby
[6,2,4].length

# Rückgabewert
=> 3
```

Hier wird die [`length`](https://rubyapi.org/2.7/o/array#method-i-length) Methode auf einem Array(Liste) aufgerufen.
Sie hat als Rückgabewert die Anzahl der Elemente die sich im Array befinden.

### Und jetzt du!

[Even or Odd - Codewars](https://www.codewars.com/kata/53da3dbb4a5168369a0000fe)

Hier sind ein paar Lösungen falls du feststecken solltest:
<details>
<summary>Mögliche Lösungen</summary>

Eine Lösung mit den bisher gelernten Werkzeugen:

```ruby
def even_or_odd(number)
  # Berechne den Rest der Division number / 2,
  # Wenn der Rest 0 ist muss number gerade sein, ansonsten ungerade.
  if(number % 2 == 0)
    'Even'
  else
    'Odd'
  end
end
```
Oder wir benutzen eine Methode die Ruby bereits definiert hat: [even?](https://rubyapi.org/2.7/o/integer#method-i-even-3F)

```ruby
def even_or_odd(number)
  # Ruby hat die Logik der ersten Lösung bereits implementiert, siehe obiger Link.
  if(number.even?)
    return 'Even'
  end
  'Odd'
end
```

</details>

### Schleifen und Blöcke

#### each

Mit der Methode [`each`](https://rubyapi.org/2.7/o/array#method-i-each) kann beispielsweise ein Array von Integern(Ganzzahlen) durchlaufen werden.
```ruby
[1, 2, 3, 4, 5].each do |number|
  puts "Dies ist Durchlauf Nummer #{number}"
end

# Output
Dies ist Durchlauf Nummer 1
Dies ist Durchlauf Nummer 2
Dies ist Durchlauf Nummer is 3
Dies ist Durchlauf Nummer is 4
Dies ist Durchlauf Nummer is 5

# Rückgabewert
=> [1, 2, 3, 4, 5]
```

|Teil|Typ|Beschreibung|
|-|-|-|
|`[1, 2, 3, 4, 5]`|Array|Das Array über das gleich iteriert werden soll.|
|`.each`|Methodenaufruf /vordefiniert|Wir möchten gerne etwas mit jedem Element im Array tun|
|`do`|Keyword|Anfang eines Blocks, equivalent zu `{`|
|`\|number\|`|Variablendefinition|Diese Variable wird in jeder Iteration(Durchlauf) den Wert des aktuellen Elements enthalten|
|`puts "Dies ist Durchlauf Nummer #{number}"`|Die eigentliche Definition des Blocks|Hier wird bestimmt was mit jedem Element passieren soll|
|`end`|Keyword|Kkeyword um einen Block zu schließen, equivalent zu `}`|

Derselbe Block von vorher in zwei Varianten die dasselbe tun:
```ruby
[1, 2, 3, 4, 5].each do |number|
  puts "Dies ist Durchlauf Nummer #{number}"
end
# oder
[1, 2, 3, 4, 5].each { |number| puts "Dies ist Durchlauf Nummer #{number}" }
```

