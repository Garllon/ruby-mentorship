# Lesson 4 - Practise

  - [General](#general)
  - [Part 1](#part-1)
  - [hashes](#hashes)
  - [Part 2](#part-2)

## General
In this lessons we like shope a little bit on the `death star` ⭐ with VADER DOLLAR 💲.
For this we will create a shopping list, where we have items we like to buy in there, for example:
```
milk, eggs, sausage, juice, cheese, Lightsaber, Tie-Figther, ...
```

## Part 1:

Imagine you are now in the shop and like to buy all the items on it.
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
  shopping_basket.add(shopping_item)
end

puts shopping_basket
```
</details>

## Hashes

What are hashes in Ruby. Think as them as dictionaries or key value stores. Using a key, you can find the related value. For example in a dictonary:
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
## Part 2:

The same situation as in [Part 1](#part-1), but now we also like to now the total price of all items we can buy and also a new list, with items which are not available. Here is a list of products with prices:

- milk => 1.5
- juice => 1.2
- cheese => 1.7

All prices are of course in VADER DOLLAR.

<details>
<summary>Possible Solution</summary>

```ruby
shop_products = { "milk" => 1.5, "juice" => 1.2, "cheese" => 1.7 }

shopping_list = ["milk", "eggs", "sausage", "juice", "cheese"]
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

puts "You need to pay: #{total_price} VADER DOLLAR."
# You need to pay: 4.4 VADER DOLLAR.
 => nil
puts "The following items you bought: #{shopping_basket.join(", ")}"
# The following items you bought: milk, juice, cheese
 => nil
puts "The shop has non of these products: #{not_available_products.join(", ")}"
# The shop has non of these products: eggs, sausage
 => nil
```


</details>
