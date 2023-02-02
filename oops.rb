require_relative 'module'

class Student

    include Crud

    attr_accessor :firstName, :lastName, :email, :password
    attr_reader :username

    @firstName
    @lastName
    @email
    @username
    @password

    def initialize(fname, lname, email, uname, pwd)
        @firstName = fname
        @lastName = lname
        @email = email
        @username = uname
        @password = pwd
    end

    def to_s
        "The full name is #{firstName} #{lastName}"
    end

    # def setFirstName=(fname)
    #     @firstName = fname
    # end

    # def firstName
    #     @firstName
    # end
end

obj = Student.new("Mayank", "Singh", "mayank@oncehub.com", "mayank", "password")

# p obj
# puts obj

hashedPassword = obj.create_hash_digest(obj.password)

p hashedPassword
