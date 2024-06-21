# ruby

Here are some basic Ruby programs to help you get started with the language:

```
history -w /dev/stdout
sudo yum install ruby -y
ruby --version
history
clear
ls
mkdir ruby-practice
cd ruby-practice/
clear
touch hello_world.rb
sudo nano hello_world.rb
ruby hello_world.rb
ls
touch 02_sum.rb
sudo nano 02_sum.rb
ruby 02_sum.rb
ls
mv hello_world.rb 01_hello_world.rb
ls
clear
ls
touch 03_conditional.rb
sudo nano 03_conditional.rb
ls
touch loops.rb
mv loops.rb 04_loops.rb
ls
sudo nano 04_loops.rb
clear
ls
cd ruby-practice/
clear
ls
sudo nano 04_loops.rb
clear
ls -la
cd ruby-practice/
ls
clear
ls -la
rm 04_loops.rb
touch 04_loops.rb
clear
ls
nano 04_loops.rb
ruby 04_loops.rb
nano 04_loops.rb
clear
ls
touch 05_arrays.rb
sudo nano 05_arrays.rb
ruby 05_arrays.rb
touch 06_hashes.rb
sudo nano 06_hashes.rb
clear
ls
ruby 06_hashes.rb
ls
touch 07_methods.rb
sudo nano 07_methods.rb
ruby 07_methods.rb
touch 08_classes.rb
sudo nano 08_classes.rb
ruby 08_classes.rb
sudo touch 09_readfile.rb
sudo nano 09_readfile.rb
sudo touch example.txt
sudo nano example.txt
ruby 09_readfile.rb
sudo touch 10_writefile.rb
sudo nano 10_writefile.rb
ruby 10_writefile.rb
cat output.txt
```
### 1. Hello World
The simplest program to start with.

```ruby
# hello_world.rb
puts "Hello, World!"
```

### 2. Variables and Basic Operations
A program demonstrating the use of variables and basic arithmetic operations.

```ruby
# variables.rb
a = 10
b = 20
sum = a + b

puts "The sum of #{a} and #{b} is #{sum}"
```

### 3. Conditional Statements
Using `if` statements to make decisions in your code.

```ruby
# conditionals.rb
number = 7

if number > 0
  puts "#{number} is positive"
elsif number < 0
  puts "#{number} is negative"
else
  puts "#{number} is zero"
end
```

### 4. Loops
Using loops to repeat actions.

```ruby
# loops.rb
# Using a while loop
i = 1
while i <= 5
  puts "Iteration #{i}"
  i += 1
end

# Using a for loop
for i in 1..5
  puts "Iteration #{i}"
end
```

### 5. Arrays
Basic operations on arrays.

```ruby
# arrays.rb
arr = [1, 2, 3, 4, 5]

# Accessing elements
puts "First element: #{arr[0]}"

# Iterating through an array
arr.each do |element|
  puts "Element: #{element}"
end
```

### 6. Hashes
Using hashes (also known as dictionaries or maps).

```ruby
# hashes.rb
person = {
  name: "John",
  age: 30,
  city: "New York"
}

# Accessing values
puts "Name: #{person[:name]}"
puts "Age: #{person[:age]}"
puts "City: #{person[:city]}"
```

### 7. Methods
Defining and calling methods.

```ruby
# methods.rb
def greet(name)
  return "Hello, #{name}!"
end

puts greet("Alice")
puts greet("Bob")
```

### 8. Classes and Objects
Creating a class and using objects.

```ruby
# classes.rb
class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    "Hello, my name is #{@name} and I am #{@age} years old."
  end
end

person1 = Person.new("Alice", 25)
puts person1.introduce

person2 = Person.new("Bob", 30)
puts person2.introduce
```

### 9. Reading from a File
Reading and displaying content from a file.

```ruby
# read_file.rb
file_name = "example.txt"

if File.exist?(file_name)
  File.open(file_name, "r") do |file|
    file.each_line do |line|
      puts line
    end
  end
else
  puts "File not found."
end
```

### 10. Writing to a File
Writing content to a file.

```ruby
# write_file.rb
file_name = "output.txt"

File.open(file_name, "w") do |file|
  file.puts "This is a sample text."
  file.puts "Written to the file."
end

puts "Content written to #{file_name}"
```

These basic programs cover a range of fundamental concepts in Ruby programming. Feel free to modify and expand them as you become more familiar with the language.
