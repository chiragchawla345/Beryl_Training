begin
	a=10
	a/10
	rescue Exception=>e
		puts e.message
	else
		puts "No Exception"
	ensure
		puts "Always"
end
puts""
begin
	a=10
	a/0
	rescue Exception=>e
		puts e.message
	else
		puts "No Exception"
	ensure
		puts "Always"
end

		