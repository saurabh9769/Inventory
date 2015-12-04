class Item
	attr_accessor :name , :quantity

	def initialize(name,quantity)
		@name = name
		@quantity = quantity	
	end

	def add()
		#if item
			puts "Enter  the quantity to be added or removed : "
			p_no = gets.chomp.to_i
		
			self.quantity = self.quantity + p_no
			#puts item.quantity
	#		msg
		#else	
			#puts"invalid input"
		#end
	end

	def remove()
		# puts "Enter a product name : \n apple orange grape"
		# p_name = gets.chomp
		# item = @@items.select{|i| i.name == p_name}.last
		#if item
			puts "Enter  the quantity to be added or removed : "
			p_no = gets.chomp.to_i
			if p_no > self.quantity
				puts "Insert proper quantity "
			else
				self.quantity = self.quantity - p_no
				#puts item.quantity
		#		msg
			end
		# else	
		# 	puts"invalid input"
		# end
	end

	# def msg()
	# 	puts"Your current inventory status is :  "
	# 	@@items.each do |i| 
	# 		puts i.name
	# 		puts i.quantity
	# end 
	#end	

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