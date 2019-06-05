# File read and wite popearations
file1 = File.new("test.txt","r+")
if file1
	# Initially pointer points to first character
	content = file1.sysread(5) 
	puts content
else
	puts "Unable to Read"
end

if file1
	#Pointer points to sixth character
	content = file1.sysread(5) 
	puts content
else
	puts "Unable to Read"
end

if file1
	#Pointer points to 11th character so overwrite 11-15 characters
    file1.syswrite("11111")     
else
    puts "Unable to open file"
end	
						
#File gets closed after the termination or completion of program