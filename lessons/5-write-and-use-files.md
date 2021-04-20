# Lesson 5 - Write and use files

- [Basic creation and execution of files](#basic-creation-and-execution-of-files)

## Basic creation and execution of files

1. Navigate to your shared container folder and create a new file. The name is up to you, but the file_type(file_ending) needs to be `.rb`.
   Which is the abbreviation for ruby.

2. We created a file named: [`lesson-5.rb`](/lessons/examples/lesson-5.rb)

3. Then open the file in your preferred editor. We recommend again [Atom](https://atom.io). :)
   We added the following for example:
   ```ruby
   puts "Hello World"
   ```

4. Now run your container as always and type:
   ```shell
   ruby lesson-5.rb
   ```
   
## Work with gets and puts and loops to create and interactive tool

In ruby there is a method to get input from a user (on a terminal). It's called [`gets`](https://rubyapi.org/2.7/o/kernel#method-i-gets).
Using `gets` and loops it's possible to build simple command line programs. Like so:

```ruby
input = gets.chomp
```

The user confirms the input by pressing the enter key. Since the enter key also creates a new line we need to remove that from the input. That's what the [`chomp`](https://rubyapi.org/2.7/o/string#method-i-chomp) method does for us. :)

Keep in mind that `gets` returns a string. ;)

### Homework

Write an interactive ruby program that processes user input (e.g. via the gets method). It should live in its own file (e.g. homework.rb) and can be executed like `ruby homework.rb` inside our container.
Bonus 1:
Use method(s)
Bonus 2:
Use loops and allow the user to decide when to exit the program

If you're lacking inspiration try to write a small addition trainer. ➕
  
[Possible solution](/lessons/examples/lesson-5-calc.rb)
