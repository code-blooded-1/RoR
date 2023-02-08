def fn
    puts "Inside fn"
    raise "Error in fn"
    puts "After error"
rescue
    puts "Saved"
end 

def fn2(age)
    puts "Age is" + age
    raise StandardError.new("Minor not allowed") if age < 18
    puts "You are welcome"
rescue StandardError => e
    puts e
    puts "Hello there"
end

def fn2(age)
    puts "Age is #{age}"
    raise StandardError.new("Minor not allowed") if age < 18
    puts "You are welcome"
rescue StandardError => e
    puts e
    puts "Hello there"
end

# output
# fn2 15
# Age is 15
# Minor not allowed       
# Hello there        

class Adult
end

class MinorError < StandardError; end

class DummyError < StandardError; end

def fn2(age)
    puts "Age is #{age}"
    raise MinorError.new("Minor not allowed") if age < 18
    puts "You are welcome"
rescue StandardError => e
    puts e
    puts "Hello there"
end

def fn2(age)
    puts "Age is #{age}"
    raise MinorError.new("Minor not allowed") if age < 18
    puts "You are welcome"
    raise DummyError.new("Dummy account") if age > 18 && age < 22 
    puts "You are finally there"
rescue StandardError => e
    puts e
    puts "Hello there"
rescue MinorError => e
    puts "xxx #{e}"
rescue DummyError => e
    puts "yyy #{e}";
end

# output
    # => :fn2
    # irb(main):048:0> fn2 21
    # Age is 21
    # You are welcome                                                                                                           
    # Dummy account                                                                                                             
    # Hello there                                                                                                               
    # => nil        

def fn2(age)
    puts "Age is #{age}"
    raise MinorError.new("Minor not allowed") if age < 18
    puts "You are welcome"
    raise DummyError.new("Dummy account") if age > 18 && age < 22
    puts "You are finally there"
rescue MinorError => e
    puts "xxx #{e}"
rescue DummyError => e
    puts "yyy #{e}"
rescue StandardError => e
    puts "Inside standard err #{e}"
end

# output
    # => :fn2
    # irb(main):058:0> fn2 21
    # Age is 21
    # You are welcome                                                                                                                                                   
    # yyy Dummy account                                                                                                                                                 
    # => nil        

    # irb(main):059:0> fn2 22
    # Age is 22
    # You are welcome                                                                                                                                                   
    # You are finally there                                                                                                                                             
    # => nil                                                                                                                                                            
    # irb(main):060:0> fn2 18
    # Age is 18
    # You are welcome
    # You are finally there

a = " hello world "  
p a.strip            