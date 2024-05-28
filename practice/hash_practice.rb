class StudentInfo
    def basic_info_of_student
      students = {
        name: "Rajkumar",
        last_name: "Prajapati",
        email: "rajprajapati@gmail.com",
        phone: 9131661707,
        age: 25
      }
      puts "What do you want to print (name, last_name, email, phone, age): "
      info = gets.chomp.to_sym
      if students.key?(info)
        puts "Congrats your result is here: #{students[info]}"
      else
        puts "Invalid input! Please enter one of the specified keys."
      end
    end
  end
  
  obj1 = StudentInfo.new
  obj1.basic_info_of_student
  