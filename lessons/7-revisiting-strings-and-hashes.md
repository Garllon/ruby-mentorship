# English
## Lesson 7 - Revisiting strings and hashes

### Single Quotes and Double Quotes

Do you see the difference between the following?:
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

### Symbols

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

# Deutsch
## Lesson 7 - Wiedersehen mit Strings und Hashes

### Einfache und doppelte Anführungszeichen

Kannst du den Unterschied zwischen den folgenden beiden Codeschnipseln erkennen?

```ruby
puts 'Hello World!'
Hello World!
```
und
```ruby
puts "Hello World!"
Hello World!
```

Strings können sowohl mit einfachen (') als auch doppelten (") Anführungszeichen
definiert werden. Im obigen Beispiel macht es keinen Unterschied, aber es Fälle
in denen es es Unterschiede macht.

### String Interpolation

Die sogenannten String Interpolation kann nur mit doppelten Anführungszeichen
genutzt werden.

```ruby
name = 'Darth Vader'
puts "Hello #{name}"
Hello Darth Vader
```
beim Versuch denselben Code mit einfachen Anführungszeichen zu schreiben
sieht das Ergebnis wie folgt aus:
```ruby
name = 'Darth Vader'
puts 'Hello #{name}'
Hello #{name}
```

#### Steuerzeichen

Eines der bekannteren Steuerzeichen ist `\n`, es erstellt einen Zeilenumbruch,
Da Strings aus doppelten Anführungszeichen interpoliert sind kann man folgendes
auch wieder nur mit selbigen machen:

```ruby
puts "Hello \nDarth Vader"
Hello
Darth Vader
```
wenn du das gleiche mit einfachen Anführungszeichen machst, sieht die Ausgabe so
aus:
```ruby
puts 'Hello \nDarth Vader'
Hello \nDarth Vader
```

### Symbols

Symbols sehen ein bisschen wie Strings aus: `:hello`, aber es gibt einige Unter-
schiede, zum Beispiel kann ein Symbol keine Leerzeichen oder nicht alphanumer-
ische Zeichen beinhalten. Folgendes geht demnach mit Symbols nicht:

```ruby
:hello world
SyntaxError ((irb):25: syntax error, unexpected tIDENTIFIER, expecting end-of-input)
:hello world
       ^~~~~
```
Unterstriche werden üblicherweise bei Symbols als Ersatz für Leerzeichen verwendet. Das Schlüsselwort hierbei ist [snake_case](https://en.wikipedia.org/wiki/Snake_case). Es sieht also zum Beispiel dann so aus:
```ruby
:hello_world
```

Als gängige Praxis wird Text der als Code gilt üblicherweise in Symbols
abgebildet und Daten wiederum als Strings.

```ruby
shopping_list = { bread: 'half' }
```

Das macht Hashes angenehmer zu lesen und schreiben da mit Symbols als Keys keine
Hash Rockets benötigt werden.
