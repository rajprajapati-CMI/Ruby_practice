class ClassPractice
	#intance method
	def print_hello
		puts "hello world"
		
	end
	# class method
	def self.class_method_example
		puts"hello class method example"
	end
end

obj = ClassPractice.new

obj.print_hello
#calling class method 
ClassPractice.class_method_example
