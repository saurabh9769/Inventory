#class Inventory	
	p_name = 0, p_no = 0
#!/usr/bin/ruby
	$items =
	{
		'apple' => 10,
		'mango' => 20,
		'grape' => 30
	}
	
	
def buy()
	puts "Enter a product name : \n apple mango grape"
	p_name = gets.chomp
	if $items[p_name]
		puts "Enter  the quantity to be added or removed : "
		p_no = gets.chomp.to_i
		
		$items[p_name] += p_no
		msg(p_name,$items[p_name])
	else	
		puts"invalid input"
	end
end

def sell()
	puts "Enter a product name : \n apple mango grape"
	p_name = gets.chomp

	if $items[p_name]
		puts "Enter  the quantity to be added or removed : "
		p_no = gets.chomp.to_i

		$items[p_name] -= p_no
		msg(p_name,$items[p_name])
	else	
		puts"invalid input"
	end
end

	def msg(key,value)
		puts"Your current inventory status is :\n #{key}:#{value}"
	end
	
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

