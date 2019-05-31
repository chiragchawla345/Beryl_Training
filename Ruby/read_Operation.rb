file1=File.new("test.txt","r+")
if file1
	content=file1.sysread(5) #Initially pointer points to first character
	puts content
else
	puts "Unable to Read"
end
if file1
	content=file1.sysread(5) #Pointer points to sixth character
	puts content
else
	puts "Unable to Read"
end
if file1
file1.syswrite("11111")     #Pointer points to 11th character so overwrite 11-15 characters
else
puts "Unable to open file"
end							#File gets closed after the termination or completion of program
