class Item
	attr_accessor :name , :quantity

	#@@items = Array.new
	def initialize(name,quantity)
		# @n=n
		# @p=p
		# @q=q	
		@name = name
		@quantity = quantity	
	end

	
	# def input
	# 	puts 'Enter Name of the Item :'
	# 	n=gets.chomp
	# 	@items.push(n)
	# 	puts 'Enter Price of the Item :'
	# 	p=gets.chomp.to_i
	# 	@items.push(p)
	# 	puts 'Enter Quantity of the Item :'
	# 	q=gets.chomp.to_i
	# 	@items.push(q)
	# 	#add_items(n,p,q)
	# end

	# def add_items(n ,p,q)
		
		
	
	# end
	# def display()
	# 	# puts 'The Name of the Item is : n'
	# 	# puts 'The Price of the Item is : p'
	# 	# puts 'The Quatity of the Item is : q'
	# 	@items.each do |i|
	# 		puts "#{i}"
	# 	end
	# end
end