# Return an array conaininf all armstrong numbers between first number and last Number
def armstrong (l,u)
	arr = Array.new
	while(l.to_i <= u.to_i)
		l_len = l.length
		temp = 0
		for i in 0..l_len-1
			temp = temp + ( (l[i].to_i)**3)
		end
		if (l.to_i == temp)
			arr << l.to_i
			
		end
		
		l.succ!
	end
	return arr
end
puts "Enter First Number"
f = gets.chomp
puts "Enter Last Number"
s = gets.chomp
arr = armstrong(f,s)
puts arr.inspect

