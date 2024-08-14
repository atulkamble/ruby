# Ruby Practice

## Overview
This repository contains a series of practice programs designed to help users get started with Ruby programming. The examples cover fundamental concepts such as basic syntax, variables, conditionals, loops, arrays, hashes, methods, classes, file operations, and more.

## Prerequisites

To launch and connect to an EC2 instance, follow these steps:

### 1. Launch an EC2 Instance

1. **Sign in to AWS Management Console**
   - Go to the [AWS Management Console](https://aws.amazon.com/console/) and log in with your credentials.

2. **Navigate to EC2 Dashboard**
   - In the AWS Management Console, search for "EC2" and click on "EC2" to open the EC2 Dashboard.

3. **Launch an Instance**
   - Click on the “Launch Instance” button.

4. **Choose an Amazon Machine Image (AMI)**
   - Select an AMI from the list. For example, you can choose an Ubuntu Server, Amazon Linux, or any other preferred operating system.

5. **Choose an Instance Type**
   - Select an instance type based on your needs (e.g., `t2.micro` for a free tier option). Click “Next: Configure Instance Details”.

6. **Configure Instance**
   - Configure the instance settings such as the number of instances, network, and subnet. Click “Next: Add Storage” when done.

7. **Add Storage**
   - Adjust the size and type of storage if needed. Click “Next: Add Tags”.

8. **Add Tags**
   - Optionally, add tags to help identify your instance. For example, you might add a Name tag with a value like “MyEC2Instance”.

9. **Configure Security Group**
   - Create a new security group or select an existing one. Ensure that you allow SSH (port 22) for accessing your instance. You can also allow HTTP (port 80) or HTTPS (port 443) if needed.

10. **Review and Launch**
    - Review your settings and click “Launch”.

11. **Select a Key Pair**
    - You will be prompted to select an existing key pair or create a new one. Download the key pair (`.pem` file) and keep it safe as you'll need it to connect to your instance.

12. **Launch the Instance**
    - Click “Launch Instances” to start your EC2 instance. You will be taken to the “Instances” page where you can view the status of your new instance.

### 2. Connect to Your EC2 Instance

1. **Locate Your Instance**
   - Go to the EC2 Dashboard and select “Instances” to see the list of your instances.

2. **Get the Public IP Address**
   - Find your instance in the list and note its Public IP address or Public DNS name.

3. **Connect via SSH**
   - Open a terminal on your local machine.

   Use the following command to connect to your instance, replacing the placeholders with your actual key file, user name, and IP address:
   ```bash
   ssh -i /path/to/your-key.pem ec2-user@your-ec2-public-ip
   ```
   - For Ubuntu instances, use:
     ```bash
     ssh -i /path/to/your-key.pem ubuntu@your-ec2-public-ip
     ```
   - Ensure your key file has the correct permissions:
     ```bash
     chmod 400 /path/to/your-key.pem
     ```

4. **Accept the Connection**
   - The first time you connect, you may be prompted to accept the host’s fingerprint. Type “yes” to continue.

5. **Access Your Instance**
   - You should now be connected to your EC2 instance and can begin running commands on it.

### Troubleshooting

- **Security Group Rules:** Ensure the security group associated with your instance has the correct inbound rules (e.g., SSH access on port 22).

- **Key Pair:** Ensure you use the correct `.pem` file associated with the instance and that it has the correct permissions.

- **Instance State:** Ensure the instance is in the “running” state and not in any other state like “stopped” or “terminated”.

If you encounter any issues, double-check your security group settings, key pair, and instance configuration.

Ensure you have Ruby installed on your system. Install Ruby using the following command:
```bash
sudo yum install ruby -y
```
Verify the installation:
```bash
ruby --version
```

## Repository Setup

1. **Clone the Repository**
   Clone the repository to your local machine:
   ```bash
   git clone https://github.com/atulkamble/ruby.git
   cd ruby
   ```

## Practice Steps

1. **Create and Edit Ruby Files**

   Navigate to the `ruby` directory and create file, edit it and run:
   ```bash
   cd ruby
   touch hello_world.rb
   sudo nano hello_world.rb
   ruby hello_world.rb
   ```

2. **Explore and Modify Files**
   - Create and run various Ruby files, such as `02_sum.rb`, etc.
   - Use `nano` or another text editor to modify these files as needed.
   - Example commands:
     ```bash
     touch 02_sum.rb
     sudo nano 02_sum.rb
     ruby 02_sum.rb
     ```

3. **File Operations**
   - Move and rename files:
     ```bash
     mv hello_world.rb 01_hello_world.rb
     ```
   - List files and directories:
     ```bash
     ls
     ```
   - Remove files:
     ```bash
     rm 04_loops.rb
     ```

## Example Ruby Programs

### 1. Hello World
Prints a simple "Hello, World!" message.
```ruby
# hello_world.rb
puts "Hello, World!"
```

### 2. Variables and Basic Operations
Demonstrates basic arithmetic operations and variable usage.
```ruby
# variables.rb
a = 10
b = 20
sum = a + b

puts "The sum of #{a} and #{b} is #{sum}"
```

### 3. Conditional Statements
Uses `if` statements to evaluate conditions.
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
Illustrates different types of loops.
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
Demonstrates array operations and iteration.
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
Shows how to use hashes for storing key-value pairs.
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
Defines and calls methods in Ruby.
```ruby
# methods.rb
def greet(name)
  return "Hello, #{name}!"
end

puts greet("Alice")
puts greet("Bob")
```

### 8. Classes and Objects
Creates a class and uses its instances.
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
Reads content from a file and prints it.
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
Writes content to a file.
```ruby
# write_file.rb
file_name = "output.txt"

File.open(file_name, "w") do |file|
  file.puts "This is a sample text."
  file.puts "Written to the file."
end

puts "Content written to #{file_name}"
```

These practice programs cover a broad range of Ruby programming concepts. Modify and extend these examples to deepen your understanding of Ruby and enhance your programming skills.
