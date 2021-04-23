# Shopping list builder

puts "Hello, welcome to the shopping list builder!"
list = []

loop do
  puts "Please enter what you'd like to add to the list, otherwise type exit"
  input = gets.chomp
  if input == "exit"
    break
  else
    list.push(input)
  end
end
puts "The list includes: #{list.join(", ")}"
