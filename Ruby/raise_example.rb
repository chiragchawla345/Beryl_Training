begin
	a=10
	a/0						#Exception raised by a/0
	raise "divide by zero"
rescue Exception=>e
	puts "Rescued"
	e.message
end
puts""
begin
	a=10
	
	raise 'divide by zero'	#exception raised by raise statement
	a/0
rescue Exception => e
	puts "Rescued"
	puts e.message
end
