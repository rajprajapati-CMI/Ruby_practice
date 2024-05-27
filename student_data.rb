class StudentData
		def initialize(name,email,phone)
			@name =name
			@email = email
			@phone = phone		
		end
		def print_data
			puts"#{@name}"
			puts"#{@email}"
			puts"#{@phone}"			
		end
end

obj1 = StudentData.new('rajkumar','rajprajapati2080@gmail.com','9131661707')
obj1.print_data