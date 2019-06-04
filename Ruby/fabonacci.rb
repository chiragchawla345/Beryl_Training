#Print N fabonacci Numbers
def fabonacci(x)
	return 0 if(x==0) 
	return 1 if (x==1)
	temp = fabonacci(x-1) + fabonacci(x-2)
	return temp
end

# method calling inside main class
puts "enter value of N"
n = gets.chomp
for i in 0..n.to_i
	temp = fabonacci(i)
	print "#{temp} "
end
