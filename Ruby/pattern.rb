# Printing below Pattern
# 1
# 12
# 123
# 1234
# 12345

i = 5
j =5
for i in 1..i
	for j in 1..j
		if(i >= j)
			print "#{j}"
		end
	end
	puts ""
end