class Prime_number
 def get_value
 print "enter number :"
 i = gets.chomp.to_i
 prime = true
 for counter in 2..(Math.sqrt(i)) do
 if i % counter == 0 then
 prime = false
 end
 end
 if prime then
 puts "\n Given number is Prime"
 else
 puts "\n Given number is composite"
 end
 end
end
a = Prime_number.new
a.get_value