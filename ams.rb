class Ams
def get
for i in 1..1000 do
puts "Enter a number :" 
number=gets.chomp.to_i
new_num=number
sum=0
while(new_num>0)
sum=sum+(new_num%10)*(new_num%10)*(new_num%10)
new_num=new_num/10
 
end
if sum==number
puts "Armstrong"
else
puts "non-Armstrong"
end
end
end
end
a=Ams.new
a.get