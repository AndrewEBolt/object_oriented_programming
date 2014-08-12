#Define the properties of the plateau
class Plateau
	attr_accessor :x, :y
end

#Define the properties of the Rovers
class Rover
	attr_accessor :x, :y, :d

	def read(commands)
		commands.each do |input|
			if input == "L" || input == "R"
				turn(input)
				puts "The rover is at #{@x}, #{@y}, #{@d}"
			elsif input == "M"
				move(input)
				puts "The rover is at #{@x}, #{@y}, #{@d}"
			else
				puts "That is not a valid command!"
			end
		end
	end

	def turn(i)
		direction = ["N", "E", "S", "W"]
		# @d = direction[x]
		@f = direction.index(@d)
		if i == "L"
			@f -= 1
			@d = direction[@f]
		elsif i == "R" && @f == 3
			@f = 0
			@d = direction[@f]
		else
			@f += 1
			@d = direction[@f]
		end
	end

	def move(m)
		if @d == "N"
			@y += 1
		elsif @d == "E"
			@x += 1
		elsif @d == "S"
			@y -= 1
		else @d == "W"
			@x -= 1
		end
	end
end

#Define the size of the plateau from user input
plateau = Plateau.new
puts "What is the maximum coordinates of the plateau?"
plateau_max = gets.chomp.split
plateau.x = plateau_max[0].to_i
plateau.y = plateau_max[1].to_i

puts "The plateau is #{plateau.x} by #{plateau.y}."


#define starting properties for rover_1
rover_1 = Rover.new
puts "Where has the 1st rover landed?"
rover_1SP = gets.chomp.split
rover_1.x = rover_1SP[0].to_i
rover_1.y = rover_1SP[1].to_i
rover_1.d = rover_1SP[2]
puts "The rover is at #{rover_1.x}, #{rover_1.y}, #{rover_1.d}"

#receive second line of input for rover_1
puts "Where would you like rover_1 to go?"
input_1 = gets.chomp.split
rover_1.read(input_1)
puts "Final position of the first rover is #{rover_1.x}, #{rover_1.y}, #{rover_1.d}"


#define starting properties for rover_2
rover_2 = Rover.new
puts "Where has the second rover landed?"
rover_2SP = gets.chomp.split
rover_2.x = rover_2SP[0].to_i
rover_2.y = rover_2SP[1].to_i
rover_2.d = rover_2SP[2]
puts "The rover is at #{rover_2.x}, #{rover_2.y}, #{rover_2.d}"

#receive second line of input for rover_2
puts "Where do you want the second rover to go?"
input_2 = gets.chomp.split
rover_2.read(input_2)
puts "Final position of the second rover is #{rover_2.x}, #{rover_2.y}, #{rover_2.d}"







