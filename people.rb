class People
	attr_accessor :name

	def greeting
		puts "Hi, my name is #{@name}"
	end
end

class Student < People
	def learn
		puts "I get it!"
	end
end

class Instructor < People
	def teach
		puts "Everything in Ruby is an Object"
	end
end

instructor_1 = Instructor.new
instructor_1.name = "Chris"
instructor_1.greeting


student_1 = Student.new
student_1.name = "Christina"
student_1.greeting 
