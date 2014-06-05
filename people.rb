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

instructor_1.teach
student_1.learn 

#Calling the teach method on student_1 doesn't work because it is not 
#part of the Instructor class. The teach method is part of the 
#Instructor class and therefore can not be called on the Student class.
student_1.teach
