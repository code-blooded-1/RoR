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

# x = "Some global object"

# def fn x
#     p x
#     nil
# end

# fn x

# class Test
#     def initialize (name)
#         @name = name
#     end

#     def doSomething
#         name = "Something"
#         p name
#         p @name
#         nil
#     end
# end

# obj = Test.new("Hello")
# obj.doSomething

# class Student
#     def greet
#         puts "Hello"
#     end
# end

# class ScienceStudent < Student
#     def greet
#         puts "hello from science student"
#     end
# end

# class ScienceStudent < Student
#     def greet
#         puts "hello from science student"
#     end
# end

# class ScienceStudent < Student
#     def greet
#         puts "hello from science student"
#     end
# end

# class ScienceStudent < Student
#     def greet
#         super; puts "hello from science student"
#     end
# end

# class Student
#     def initialize(name, age)
#         @name = name
#         @age = age
#     end
# end

# class ScienceStudent
#     def initialize(name, age, subject)
#         super(name, age)
#         @subject = subject
#     end
# end

# obj = ScienceStudent.new("Mayank", 21, "Science")

# class ScienceStudent
#     private
#     def getMarks()
#         puts "Marks are 100"
#     end
# end

# class ScienceStudent
#     def accessMarks()
#         getMarks()
#     end
# end

# obj.accessMarks()

# class Student
#     private
#     def testFn()
#         p "Test function"
#     end
# end

# class ScienceStudent
#     def callTest()
#         testFn
#     end
# end

# module TestModule
#     def modulefn()
#         p "inside module method"
#     end
# end

# class ModuleClass
#     include TestModule
# end

# class ModuleClass
#     extend TestModule
# end

# class Car
#     def initialize(name, engine)
#         @name = name
#         @engine = engine
#     end
# end

# class Engine
# end

# def fn(p1, &block)
#     p p1
#     yield
# end

# def fn(p1, &block)
#     p p1
#     yield if block_given?
# end

# fn(21, ) do |x|
#     p "Hello"
# end

# fn(45)


#singleton class
class Person 
    @@instance = nil

    def self.getInstance
        return @@instance if @@instance
        @@instance = new
    end

    private_class_method :new
end

p Person.getInstance