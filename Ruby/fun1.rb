# return
def func1(a, b)
	puts "#{a} #{b} "
	a+=20
	b+=30
	# last line is by default returned by the function
	a+b
	#return a,b "This will retutn an array havig two elements a & b"
end
c = func1(100,200)
puts "#{c}"