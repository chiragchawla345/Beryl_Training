# Exception Handling
# retry will restart the execution from begin [block]
fileName = "GitHub Commandss"
begin
	file1 = File.new(fileName, "r")
	if file1
		puts "Opened Successfully"
	end
rescue
	fileName = "GitHub Commands"
	puts "Retry"
	retry
end