require_relative './task.rb'

class Project
	attr_accessor :name , :tasks , :status

	def initialize(name)
		@name = name
		@tasks = []
		@status = 'New'
		a = Task.new('Development')
		b = Task.new('Design')
		c = Task.new('Testing')
		@tasks.push(a)
		@tasks.push(b)
		@tasks.push(c)
	end

	def input_task
		puts "Add tasks for project : "
		t = gets.chomp
		d = Task.new(t)
		@tasks.push(d)
		
	end

	def input_status
		puts "Select Project status : \n New \n In process \n Completed"
		s = gets.chomp
		@status = s
	end
end