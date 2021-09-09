# English
## Lesson 4 - Practise

  - [General](#general)
  - [Going Shopping](#going-shopping)
  - [Hashes](#hashes)
  - [Cashing Out](#cashing-out)
  - [Homework](#homework)

### General
In this lesson we'd like to shope a little bit on the `death star` ⭐ with VADER DOLLAR 💲.
For this we will create a shopping list, where we have items we like to buy in there, for example:
```
milk, eggs, sausage, juice, cheese, Lightsaber, TIE Fighter, ...
```

### Going Shopping:

Imagine you are now in the shop and like to buy all the items on your list.
At the end we like to have all items from our list in our basket.

<details>
<summary>Possible Solution</summary>

```ruby
# full shopping list
shopping_list = ["milk", "eggs", "sausage", "juice", "cheese"]

# empty shopping basket
shopping_basket = []
```

```ruby
shopping_list.each do |shopping_item|
  shopping_basket.push(shopping_item)
end
 => ["milk", "eggs", "sausage", "juice", "cheese"]

puts shopping_basket
# milk
# eggs
# sausage
# juice
# cheese
 => nil
```


The `.each` is returning the list you looped over as return value.
Check the documenation for the behaviour of other loops. 
[array#method-i-each](https://rubyapi.org/2.7/o/array#method-i-each)
</details>

### Hashes

What are hashes in Ruby. Think of them as dictionaries or key value stores. Using a key, you can find the related value. For example in a dictonary:
```
hello => Hallo
day => Tag
```

This looks like this in ruby:
```ruby
{ "hello" => "Hallo", "day" => "Tag" }
```

The syntax for accessing the hash looks similar to an array. The difference is that with an array we search via index, whereas in a hash we search by key.

```ruby
dictonary = { "hello" => "Hallo", "day" => "Tag" }
dictonary["hello"]
=> "Hallo"
```

If the key your are looking for is not defined, ruby will return `nil`.
```ruby
dictonary = { "hello" => "Hallo", "day" => "Tag" }
dictonary["month"]
=> nil
```

|Part|Type|Description|
|-|-|-|
|`{`|keyword|Beginning of a hash|
|"hello"|key|your defined key for a key value pair|
|`=>`|seperator|lets ruby know that the key ends here and the value comes next ('hash rocket')|
|"hello"|value|the assigned value to your defined key|
|`}`|keyword|end of a hash|

The keys and values of hashes can be everything.
### Cashing out:

The same situation as in [Going Shopping](#going-shopping), but now we also like to know the total price of all items we can buy and also a new list, with items which are not available. Here is a list of products with prices:

- milk => 1.5
- juice => 1.2
- cheese => 1.7
- eggs => 1
- sausage => 3.7

All prices are of course in VADER DOLLAR 💲.

<details>
<summary>Possible Solution</summary>

```ruby
shop_products = { "milk" => 1.5, "juice" => 1.2, "cheese" => 1.7, "eggs" => 1, "sausage" => 3.7 }

shopping_list = ["milk", "eggs", "sausage", "juice", "cheese", "Lightsaber", "TIE Fighter"]
shopping_basket = []

not_available_products = []
total_price = 0

shopping_list.each do |shopping_item|
  if shop_products.keys.include?(shopping_item)
    shopping_basket.push(shopping_item)
    total_price = total_price + shop_products[shopping_item]
  else
    not_available_products.push(shopping_item)
  end
end

puts "You need to pay: #{total_price} VD (VADER DOLLAR)."
# You need to pay: 9.0 VD (VADER DOLLAR).
 => nil
puts "You bought the following items: #{shopping_basket.join(", ")}"
# You bought the following items: milk, eggs, sausage, juice, cheese
 => nil
puts "The shop has none of these products: #{not_available_products.join(", ")} :("
# The shop has none of these products: Lightsaber, TIE Fighter :(
 => nil
```


</details>

### Homework

Imagine you're about to buy a new desk. You have a monitor on your current desk, but you know you'll want to replace
that one with a bigger model some time in the future. But first you want a shiny new desk! In order to make sure
the new desk can fit the future monitor comfortably you need to figure out the width of it. Unfortunately all you about
the mystical new monitor is it's diagonal (e.g. 32 inches) and it's aspect ratio (e.g. 16 by 9). 

**The (optional 😉) homework:**

Write a method which can calculate the minimum width of the new desk based on
the information available about the new monitor that should eventually be placed on top of it.

*Bonus 1: Assume the diagonal is given in inches and return the minimum width in centimeters*

*Bonus 2: Extend your method so that it also works when more than one monitor should be placed on the desk*

[Possible Solution](/lessons/examples/lesson-4-homework.rb)

# German
## Lesson 4 - Üben

  - [General](#general)
  - [Going Shopping](#going-shopping)
  - [Hashes](#hashes)
  - [Cashing Out](#cashing-out)
  - [Homework](#homework)

### Ganz allgemein
Dieses mal wollen wir ein bisschen einkaufen gehen (auf dem `Todesstern`⭐, mit VADER DOLLAR💲).
Dazu werden wir uns eine Einkaufsliste erstellen mit den Dingen die wir kaufen wollen, zum Beispiel:

```
milk, eggs, sausage, juice, cheese, Lightsaber, TIE Fighter, ...
```

### Der Einkauf:

Stell dir vor du bist nun im Laden und willst alle Dinge auf der Einkaufsliste kaufen.
Am Ende sollten alle Gegenstände von der Liste im Einkaufskorb sein.

<details>
<summary>Possible Solution</summary>

```ruby
# Die Einkaufsliste
shopping_list = ["milk", "eggs", "sausage", "juice", "cheese"]

# Ein leerer Einkaufskorb
shopping_basket = []
```

```ruby
shopping_list.each do |shopping_item|
  shopping_basket.push(shopping_item)
end
 => ["milk", "eggs", "sausage", "juice", "cheese"]

puts shopping_basket
milk
eggs
sausage
juice
cheese
=> nil
```

Der Rückgabewert der `.each` Methode ist die Liste über die iteriert wurde.
In der Dokumentation kann das Verhalten anderer Schleifen nachgeschlagen werden:
[array#method-i-each](https://rubyapi.org/2.7/o/array#method-i-each)
</details>

### Hashes

Hashes in Ruby haben einen etwas unglücklichen Namen. Man kann sie sich als Wörterbuch vorstellen in dem es für ein definiertes Wort (auch `key` genannt) einen
zugeordneten Wert (auch `value` genannt) gibt. Folgendes Wörterbuch:
```
hello => Hallo
day => Tag
```

Sieht in Ruby wie folgt aus:
```ruby
{ "hello" => "Hallo", "day" => "Tag" }
```

Die Syntax um auf einen Hash zuzugreifen ähnelt der eines Arrayzugriffes. Der wichtigste Unterschied besteht darin das ein Array via Index addressiert wird, 
wohingegen ein Hash mit einem Key angesprochen wird.

```ruby
dictonary = { "hello" => "Hallo", "day" => "Tag" }
dictonary["hello"]
=> "Hallo"
```

Wenn ein gesuchter Key im Hash nicht definiert ist gibt Ruby `nil` zurück.
```ruby
dictonary = { "hello" => "Hallo", "day" => "Tag" }
dictonary["month"]
=> nil
```

|Part|Type|Description|
|-|-|-|
|`{`|Keyword|Der Anfang eines Hash|
|"hello"|Key|Der Schlüssel eines Schlüsselwerts|
|`=>`|Trennzeichen|lässt Ruby wissen das der Schlüssel zuende ist und als nächstes der Wert folgt ('hash rocket' genannt)|
|"hello"|Value|Der Wert zum zuvor definierten Schlüsse|
|`}`|Keyword|Das Ende eines Hash|

Schlüssel und Werte eines Hashs können beliebig gewählt werden, also könnte zum Beispiel sowohl der Schlüssel als auch der Wert eines Hashs wiederrum ein Hash 
sein. 🪆

### Bezahlen:

Wir befinden uns in derselben Situation wie in [Going Shopping](#going-shopping), aber dieses mal wollen wir sowohl den Gesamtpreis aller ausgesuchten Artikel als
auch die fehlenden Artikel wissen. Hier ist eine Liste der verfügbaren Produkte und ihren Preisen:

- milk => 1.5
- juice => 1.2
- cheese => 1.7
- eggs => 1
- sausage => 3.7

Alle Preise sind selbstverständlich in VADER DOLLAR💲angegeben.

<details>
<summary>Possible Solution</summary>

```ruby
shop_products = { "milk" => 1.5, "juice" => 1.2, "cheese" => 1.7, "eggs" => 1, "sausage" => 3.7 }

shopping_list = ["milk", "eggs", "sausage", "juice", "cheese", "Lightsaber", "TIE Fighter"]
shopping_basket = []

not_available_products = []
total_price = 0

shopping_list.each do |shopping_item|
  if shop_products.keys.include?(shopping_item)
    shopping_basket.push(shopping_item)
    total_price = total_price + shop_products[shopping_item]
  else
    not_available_products.push(shopping_item)
  end
end

puts "Es sind zu zahlen: #{total_price} VD (VADER DOLLAR)."
# Es sind zu zahlen: 9.0 VD (VADER DOLLAR).
 => nil
puts "Die folgenden Artikel wurden gekauft: #{shopping_basket.join(", ")}"
# Die folgenden Artikel wurden gekauft: milk, eggs, sausage, juice, cheese
 => nil
puts "Folgende Produkte fehlen im Laden: #{not_available_products.join(", ")} :("
# Folgende Produkte fehlen im Laden: Lightsaber, TIE Fighter :(
 => nil
```


</details>

### (optionale) Hausaufgabe

1. Aufgabe: Schreibe eine Methode mit der man ein Wortpaar zu einem Wörterbuch hinzufügen kann
2. Aufgabe: Schreibe eine Methode die zählt wie viele Wortpaare in einem Wörterbuch vorhanden sind
  1. Wenn ein Wortpaar bereits im Wörterbuch vorhanden ist überschreibe nicht den vorhandenen Wert
  2. Informiere den Nutzer darüber das das Wortpaar bereits vorhanden ist (z.b. durch eine Nachricht)
4. Aufgabe: Schreibe eine Methode die verifiziert ob ein Wortpaar bereits in einem Wörterbuch existiert

[Mögliche Lösung](/lessons/examples/lesson-4-homework.rb)
