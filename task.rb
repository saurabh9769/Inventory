class Task
	attr_accessor :task , :status

	def initialize(task)
		@task = task
		status = 'New'
	end

	def input_status
		puts "Select task status : \n New \n In process \n Completed"
		s = gets.chomp
		status = s
	end

end