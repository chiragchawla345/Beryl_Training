# IO
puts "Enter a Value:"
a = gets.chomp
print "#{a} #{a.class}" 
# puts and print are similiar,Diff is that puts insert a new line at the end which print doesn't
puts "#{a} #{a.class}"   
# print only first character and don't append the new line
putc "#{a} #{a.class}"   
putc '\\n'                

file1 = File.new("test.txt", "r+")
if file1
	file1.syswrite("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
else
    puts "Unable to open file"
end

if file1
	content = file1.sysread(5)
	puts content
else
	puts "Unable to Read"
end