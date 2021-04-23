# Shopping list builder

# methods

def format_list(list)
  output = ""
  list.each do |product, quantity|
    output += "#{product}: #{quantity} \n"
  end
  output
end

# main code

puts "Hello, welcome to the shopping list builder!"
list = {}

loop do
  puts "Please enter what you'd like to add to the list, otherwise type exit"
  item = gets.chomp
  if item == "exit"
    break
  else
    puts "And how many/much would you like?"
    quantity = gets.chomp
    list[item] = quantity
  end
end

puts "The list includes:"
puts format_list(list)
