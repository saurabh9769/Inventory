require_relative './project.rb'

class Projects
	def initialize()
		@@project = []
		a = Project.new('Android')
		b = Project.new('Apple')
		c = Project.new('RoR')
		@@project.push(a)
		@@project.push(b)
		@@project.push(c)
	end

	def add_task()
		puts"Select project : \n Android \n Apple \n RoR \n exit"
		p = gets.chomp
		proj = @@project.select{|i| i.name == p}.last
		proj.input_task

	end

	def change_project_status()
		puts"Select project : \n Android \n Apple \n RoR \n exit"
		p = gets.chomp
		proj = @@project.select{|i| i.name == p}.last
		proj.input_status

	end
	
	def display()
		puts "The Project is : "
		@@project.each do |j|
			puts j.name

		puts "The Status of the Project is :"
					puts j.status
					puts"\n\n"

			puts "The tasks in this project are : "
			j.tasks.each do |i|
				puts i.task
				puts"\n"

				
				
			end
		end
		
		
	end

	def start()
	option = 0
	while option != 'exit' 
		puts "Select an operation to perform :\n 1.Add Tasks to Project \n 2.Display \n 3. Change Status \n exit " 
		option = gets.chomp
			
		case option
			when "1" then 
				add_task
						
			when "2" then
				display
				
			when "3" then
				change_project_status

			when "exit"	then break
			else
				puts " Invalid input "
			end
		end
	end

end

Projects.new.start()
