require_relative './item.rb'

class Inventory	
	#p_name = 0, p_no = 0
	
	# $items =
	# {
	# 	'apple' => 10,
	# 	'mango' => 20,
	# 	'grape' => 30
	# }

	def initialize()	
		@@items = []
		a = Item.new('apple',30)
		b = Item.new('orange',40)
		c = Item.new('grape',50)
		@@items.push(a)
		@@items.push(b)
		@@items.push(c)
	end

	def buy()
		puts "Enter a product name : \n apple orange grape"
		p_name = gets.chomp
		item = @@items.select{|i| i.name == p_name}.last
		if item
			puts "Enter  the quantity to be added or removed : "
			p_no = gets.chomp.to_i
		
			item.quantity = item.quantity + p_no
			#puts item.quantity
			msg
		else	
			puts"invalid input"
		end
	end

	def sell()
		puts "Enter a product name : \n apple orange grape"
		p_name = gets.chomp
		item = @@items.select{|i| i.name == p_name}.last
		if item
			puts "Enter  the quantity to be added or removed : "
			p_no = gets.chomp.to_i
			if p_no > item.quantity
				puts "Insert proper quantity "
			else
				item.quantity = item.quantity - p_no
				#puts item.quantity
				msg
			end
		else	
			puts"invalid input"
		end
	end

	def msg()
		puts"Your current inventory status is :  "
		@@items.each do |i| 
			puts i.name
			puts i.quantity
		end 
	end	
	def start()
	option = 0
	while option != 'exit' 
		puts "Select an operation to perform :\n buy,sell,exit " 
		option = gets.chomp
			
		case option
			when "buy" then 
				buy 
				#puts "item bought"
					
			when "sell" then 
				sell  
				#puts"item sold"
			when "exit"  then break
			else
				puts " Invalid input "
			end
		end
	end
end

Inventory.new.start