arr=IO.readlines("/home/beryl/Desktop/chirag1/GitHub Commands")
len=arr.length
puts "#{len}"
arr.each do |i|
	puts i
end
puts""
file1=File.new("GitHub Commands")
if file1
	content=file1.sysread(200)
	print content
else
	puts "Unable to read"
end

