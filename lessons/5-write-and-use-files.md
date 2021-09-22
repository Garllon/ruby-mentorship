# English

## Lesson 5 - Write and use files

- [Basic creation and execution of files](#basic-creation-and-execution-of-files)

### Basic creation and execution of files

1. Navigate to your shared container folder and create a new file. The name is up to you, but the file_type(file_ending) needs to be `.rb`.
   Which is the abbreviation for ruby.

2. We created a file named: [lesson-5.rb](/lessons/examples/lesson-5.rb)

3. Then open the file with [Atom](https://atom.io). :)
   We added the following for example:
   ```ruby
   puts "Hello World"
   ```

4. Now run your container as always and type:
   ```shell
   # lesson-5.rb is our filename, you named it maybe different.
   ruby lesson-5.rb
   ```
   
### Work with gets and puts and loops to create and interactive tool

In ruby there is a method to get input from a user (on a terminal). It's called [`gets`](https://rubyapi.org/2.7/o/kernel#method-i-gets).

```ruby
input = gets.chomp
```

The user confirms the input by pressing the enter key. Since the enter key also creates a new line we need to remove that from the input. That's what the [`chomp`](https://rubyapi.org/2.7/o/string#method-i-chomp) method does for us. :)

Using `gets` and loops it's possible to build simple command line programs. Like so:

```ruby
input = nil

while input != "yes" do
   puts "Would you like to exit then type 'yes'."
   input = gets.chomp
end
```

Keep in mind that `gets` returns a string. ;)

#### Homework

Write an interactive ruby program that processes user input (e.g. via the gets method). It should live in its own file (e.g. homework.rb) and can be executed like `ruby homework.rb`. (e.g. in repl or in our container)

Bonus 1:
Use one ore more methods

Bonus 2:
Use loops and allow the user to decide when to exit the program

If you're lacking inspiration try to write a small addition trainer. ➕
Two inputs and the solution and your program tells you if the input is correct.

[Possible solution](/lessons/examples/lesson-5-calc.rb)

# Deutsch

## Lesson 5 - Schreiben und benutzen von Dateien

### Erstellen und ausführen von Dateien

1. Gehe zu deinem Ordner welchen du mit deinem Container synchronisiert hast und erstelle eine neue Datei. Den Namen der Datei kannst du freiwählen, aber die Endung muss `.rb` sein. `.rb` is hier die Abkürzung für Ruby und ist wichtig für den Interpreter.

2. Wir haben folgende Datei erstellt: [lesson-5.rb](/lessons/examples/lesson-5.rb)

3. Nun öffne die Datei mit dem Editor [Atom](https://atom.io). :)
   Wir haben die folgende Zeile hinzugefügt:
   ```ruby
   puts "Hello World"
   ```

4. Nun starte deinen Container und führe den folgenden Befehl aus:
   ```shell
   # lesson-5.rb ist der Name unserer Datei, du hast sie vielleicht anders genannt.
   ruby lesson-5.rb
   ```
   
### Mit gets und puts ein interaktives Programm schreiben.

In Ruby gibt es eine Methode mit welcher wir eine Eingabe des Benutzers abfragen können (auf dem Terminal). Die Methode heißt [`gets`](https://rubyapi.org/2.7/o/kernel#method-i-gets).

```ruby
input = gets.chomp
```

Der Benutzer bestätigt die Eingabe mit dem Drücken der `Enter` Taste. Da die `Enter` Taste auch zum Schreiben einer neuen Zeile benutzt wird müssen wir diese hier noch entfernen. Das macht die [`chomp`](https://rubyapi.org/2.7/o/string#method-i-chomp) Methode für uns. :)

Mit `gets` und Schleifen ist es schon super einfach ein kleines Programm zu schreiben: 

```ruby
input = nil

while input != "ja" do
   puts "Zum verlassen 'ja' eingeben."
   input = gets.chomp
end
```

Beachte das `gets` einen String zurück gibt.

#### Hausaufgabe

Schreibe ein interaktives Ruby Programm das Benutzereingaben verarbeitet (z.B. mit Hilfe der gets Methode). Es sollte seine eigene Datei haben (z.B. 'homework.rb') und kann durch `ruby homework.rb` ausgeführt werden. (z.B. in repl oder unserem Container)

Zusatz 1:
Verpacke deinen Code in eine oder mehrere Methoden.

Zusatz 2:
Benutze Schleifen und erlaube dem Benutzer zu entscheiden, wann er das Programm beenden möchte.
Use loops and allow the user to decide when to exit the program

Wenn du keine Idee hast, dann baue doch einen Additionstrainer. ➕
Zwei Eingaben und die Lösung und dein Programm sagt ob es richtig oder falsch ist.
  
[Possible solution](/lessons/examples/lesson-5-calc.rb)
