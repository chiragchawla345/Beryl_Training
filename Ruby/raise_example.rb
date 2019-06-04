begin
	a = 10
	#Exception raised by a/0
	a / 0						
	raise "divide by zero"
rescue Exception => e
	puts "Rescued"
	puts e.message
end

puts ""

begin
	a = 10
	#exception raised by raise statement
	raise 'divide by zero'	
	a / 0
rescue Exception => e
	puts "Rescued"
	puts e.message
end
