class Dog
	attr_accessor :name

	def training
		puts "Sit #{@name}"
		puts "Lay down #{@name}"
		puts "Good dog"
	end
end

dog = Dog.new
dog.name = "Fido"
puts dog.training




