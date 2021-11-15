# English

## Lesson 8 - Organizing Code in Files

### Using code from another file

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

#### Paths

Files can be required using `require` or `require_relative`. In order to differentiate the two it's helpful to understand how paths work.
You can think of paths as routes to a destination. They can be used to differentiate two files with the same names, that live in different directories.
E.g. `/path/to/file/data.txt` and `/path2/file/data.txt`. Both files have the exact same name, but since the path has been specified in full we can easily tell them apart.
Paths can also be specified based on the current directory. Use `pwd` to figure out the current directory.(Use PowerShell on Windows(OS))
If my current path is `/path/to` then I can refer to the first file with `/file/data.txt` as a relative path.
In order to specify a relative path to the other `data.txt` file we need to understand a special directory:
`..` refers to the directory that contains the current directory, and `../..` to the one above that. This can be chained indefinitely. 🤯
Therefore the relative path from `/path/to` to `/path2/file/data.txt` is `../../path2/file/data.txt`.

Last but not least there is the another special directy called `.`. That's simply your current directory. :)

TL;DR: Use `require` when specifying a full path (from the root of your file system) and `require_relative` for relative paths based on the current directory.

#### Transitively Requiring Code

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

#### Overriding methods

Be careful ⚠️: When two files have a method with the same name and both are required in another file then the method will only be available once. Which variant ends up becoming available depends on the order in which the files are required and if they are required before or after a duplicated method is defined.

# Deutsch

## Lesson 8 - Code in mehreren Dateien

### Code aus einer anderen Datei nutzen

Manchmal steht einfach schon zu viel Code in einer Datei. Dann kann es hilfreich
sein den Code auf mehrere Dateien aufzuteilen um den Überblick zu behalten.
Hier ein einfaches Beispiel wie Code aus einer anderen Datei genutzt werden kann:

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

Wenn beide Dateien sich im selben Ordner befinden kann das Ganze wie folgt
ausfegührt werden:

```bash
ruby file2.rb
=> Hi Vader!
```

#### Pfade

Dateien können eingebunden werden mit Hilfe der Schlüsselwörtern wie `require` oder `require_relative`. Um den Unterschied zwischen den beiden zu verstehen, ist es wichtig zu verstehen wie Pfade funktionieren. Ein Pfad ist so etwas wie eine Route zu einem Ziel. Sie können benutzt werden um zwei Dateien mit gleichen Namen, welche aber in unterschiedlichen Ordnern liegen, zu unterscheiden. Beispiel:
`/path/to/file/data.txt` und `/path2/file/data.txt`.
Beide Dateien heißen identisch, aber da der Pfad mit angegeben wurde kann man sie trotzdem unterscheiden.
Pfade können auf Basis der aktuellen Datei angegeben werden. Probier doch einfach mal `pwd` in deiner Konsole aus. (Hinweis für Windows Benutzer: Bitte die PowerShell benutzen)
Wenn dein aktueller Pfad `/path/to` ist, dann kannst du die erste Datei auch als relativen Pfad einbinden: `/file/data.txt`.
Um die andere Datei `data.txt` mit einem relativen Pfad zu beschreiben.
`..` bezeichnet den aktuellen Ordner, und `../..` der Ordner darüber. Das kann eine sehr lange Kette werden. 🤯
Therefore the relative path from `/path/to` to `/path2/file/data.txt` is `../../path2/file/data.txt`.

Zu guter letzte gibt es noch einen weiteren besonderen Ordner der `.` heißt. Er
ist automatisch immer das aktuelle Verzeichnis. :)

TL;DR: Mit `require` werden absolute Pfade erwartet und sie sind immer gleichermaßen gültig,
mit `require_relative` werden relative Pfade erwartet und ob und wie sie gültig sind hängt vom aktuellen Verzeichnis ab.

#### Code transitiv einbinden

Mit den Dateien

```ruby
# basic_greeter.rb
def greet(name)
  "Hi #{name}!"
end
```

,

```ruby
# star_wars_greeter.rb
require_relative 'basic_greeter'

def wookie_greet(name)
  puts greet(name) + "Yuow"
end
```

und

```ruby
# greeter.rb
require_relative 'star_wars_greeter'

wookie_greet('Han') # using a method from the star_wars_greeter.rb
greet('Vader') # using a method from the basic_greeter.rb
```

Wenn Code anderen Code einbindet braucht nur der erste Teil eingebunden zu
werden um beide zur Verfügung zu haben da die Einbindung transitiv funktioniert
über Dateigrenzen hinweg. Es muss in dem Fall also nicht jede Datei einzeln ein-
gebunden werden wenn sie sich bereits untereinander in einer Kette einbinden.

#### Methoden überschreiben

Achtung ⚠️: Wenn zwei verschiedene Dateien eine Methode mit demselben Namen haben,
dann wird die zweite Methodendefinition die erste überschreiben. Es kann also
immer nur eine Methodendefinition pro Name gleichzeitig verfügbar sein. Die
Reihenfolge in der Methoden definiert sind, z.B. durch das Einbinden von Dateien,
bestimmt welche Definition am Ende "gewinnt". Nämlich immer die letzte.
