# A simple addition trainer
def generate_task
  a = rand(50)
  b = rand(50)
  result = a + b

  puts "What's #{a} + #{b}?"
  input = gets.chomp

  if result == input.to_i
    puts "Yeah your are right. It is: #{result}!"
  else
    puts "Sorry, but the correct answer would have been #{result}!"
  end
end

def exit?
  puts "Would you like to continue? Type 'y' to continue"
  input = gets.chomp
  input != 'y'
end

puts "Hello there! Time to practice your calculation skills :)"
continue = true

loop do
  generate_task

  puts "Would you like to continue? Type 'y' to continue"
  input = gets.chomp
  break if exit?
end
