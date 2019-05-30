def prime(a)
	count=0
	for i in 2..a/2
		if(a%i==0)
			count=1
			break;
		end
	end
	if(count==0)
		return 1
	else
		return 0
	end
end
puts "Enter an Positive Integer"
b=gets.chomp
temp=prime(b.to_i)
if temp==1
	puts "Prime"
else
	puts "Non Prime"
end