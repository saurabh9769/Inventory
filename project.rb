require_relative './task.rb'

class Project
	attr_accessor :name , :tasks

	def initialize(name)
		@name = name
		@tasks = []
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
end