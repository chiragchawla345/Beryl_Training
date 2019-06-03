def fabonacci(x)
	puts "0 " if x==1
	puts "0 1 " if(x==2)
	i=0
	j=1
	for k in 3..x
		temp=i+j
		print "#{temp} "
		i=j
		j=temp
	end
end
puts "How many Fabonacci numbers you want to print"
n=gets.chomp
fabonacci(n.to_i) 
