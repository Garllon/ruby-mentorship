# Lesson 4 - Practise

  - [General](#general)
  - [Part 1](#part-1)
  - [hashes](#hashes)
  - [Part 2](#part-2)

## General
In this lessons we like shope a little bit on the `death star` ⭐ with VADER DOLLAR 💲.
For this we will create a shopping list, where we have items we like to buy in there, for example:
```
Orange, Apple, Cucumber, tomato, cheese, shoes, ...
```

## Part 1:

At the end of the lesson we like to have all of this things in our basket.

<details>
<summary>Possible Solution</summary>

```ruby
# full shopping list
shopping_list = ["Orange", "Apple", "Cucumber", "tomato", "cheese", "shoes"]

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

This looks liek this in ruby:
```ruby
{ "hello" => "Hallo", "day" => "Tag" }
```

The syntax for accessing the hash looks similar to an array. The difference is that with an array we search via index, whereas in a hash we search by key.

```ruby
dictonary = { "hello" => "Hallo", "day" => "Tag" }
dictonary["hello"]
=> "Hallo"
```

## Part 2:

We also like to get the prices of the products to see how much we will pay at the end.

<details>
<summary>Possible Solution</summary>

```ruby
shop_products = { "tomato" => 1.5, "cucumber" => 1.2 }

shopping_list = ["Orange", "Apple", "Cucumber", "tomato", "cheese", "shoes"]
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
puts "The following items you bought: #{shopping_basket.join(", ")}"
puts "The shop has non of these products: #{not_available_products.join(", ")}"
```


</details>
