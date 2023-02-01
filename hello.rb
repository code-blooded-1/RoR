# firstName = 'Mayank'
# lastName = 'Singh'

# p "My name is #{firstName} #{lastName}"

# city = "Delhi"
# newCity = city

# city = "Dehradun"

# p newCity

# p 10 === 10.0
# p 10.eql?(10.0)

# ranges 
# x = 1..100
# p x.to_a.shuffle

# arrays 
# arr = [1, 2, "Hello"]
# p arr.class

# arr2 = [1..10]
# p arr2[0].to_a

arr = ["Hello", 2, 7, 9, 10, ["2D", "Array"]]
arr << "World"

# p arr.join
# p arr

# p %w(str = This is a statement)

# for i in arr
#     print i.to_s + " "
# end

# arr.each do |item|
#     print item.to_s + " "
# end

# this is the short hand of the above code snippet
# arr.each { |item| print item.to_s + " " }

# numbers = (1..30).to_a.shuffle
# p numbers.select { |number| number.even? }

# myhash = {
#     name: "Mayank Singh",
#     age: 21,
#     city: "Haldwani",
#     username: "mayank"
# }

# myhash.each { |key, val| p "The class of key is #{key.class} and class of value is #{val.class}"}
# myhash.keys.each do |val|
#     puts myhash[val]
# end

# if true
#     puts "Hello"
# end         
# if 0
#     puts "helo"
# end                    
# if nil
#    puts "hello"
# end
# if ""
#    puts "hello"
# end

# puts "hello" if !false
# puts "hello" unless false

# assignment is done as pass by value
# in functions arguements are passed by reference

# def fn(arr)
#     arr[0] = 10
# end

# class Person
#     # class method
#     def self.greet
#         puts "Welcome"
#     end

#     # instance method
#     def greet
#         puts "hello"
#     end
# end

# p Person.greet
# p Person.new.greet

# class Employee
#     # grouping class methods here
#     class << self
#         def greet
#             puts "Welcome"
#         end
#         def fn
#             puts "Hello"
#         end
#     end
#     def greet 
#         puts "Welcome 2"
#     end
# end

# p Employee.greet 

# p Employee.fn

# p Employee.new.greet # will throw error

# class Employer
#     def greet
#         puts self #refers to instance since it is an instance method
#     end
# end

# class Employer
#     def self.greet
#         # refers to class since it is a class method
#         puts self
#     end
# end

# class Vehicle
#     def initialize(name, color)
#         @name = name
#         @color = color
#     end
#     # setter and getter
#     attr_accessor :name, :color
#     def testirb
#         # both the staements below convey the same meaning
#         puts self.name
#         puts name
#     end
# end

