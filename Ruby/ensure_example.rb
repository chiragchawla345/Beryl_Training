# Exception

begin
	10 / 0
	raise "Error"
rescue Exception=>e
	puts e.message

ensure
	puts "This will always print"
end 

puts""

begin
	raise "Error"
	10 / 0
rescue Exception=>e
	puts e.message

ensure
	puts "This will always print"
end