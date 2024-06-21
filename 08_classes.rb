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
