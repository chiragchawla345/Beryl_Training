def func1(a, b)
	puts "#{a} #{b} "
	a+=20
	b+=30
	a+b
	return a,b
end
c=func1(100,200)
puts "#{c}"