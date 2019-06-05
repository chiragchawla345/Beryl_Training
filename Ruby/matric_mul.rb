puts "enter the details of First matrix"
puts "enter m"
m = gets.chomp
puts "enter n"
n = gets.chomp
mat1 = Array.new
for i in 1..m.to_i
	arr = Array.new
	puts "Enter n elements of #{i}th row "
	for j in 1..n.to_i
		temp = gets.chomp
		arr << temp
	end
	mat1 << arr
end
puts mat1.inspect

puts "enter the details of Second matrix"
puts "enter m"
m2 = gets.chomp
puts "enter n"
n2 = gets.chomp
mat2 = Array.new
for i in 1..m2.to_i
	arr = Array.new
	puts "Enter n elements of #{i}th row "
	for j in 1..n2.to_i
		temp = gets.chomp
		arr << temp
	end
	mat2 << arr
end
puts mat2.inspect
mat2_tran = mat2.transpose
puts mat2_tran.inspect
res = Array.new
for i in 0..m.to_i-1
	arr1 =Array.new
	for j in 0..n2.to_i-1
		arr = 0
		for k in 0..m2.to_i-1
			temp = 1
			temp = temp * mat1[i][k].to_i * mat2[k][j].to_i
			arr = arr + temp
		end
		arr1 << arr
	end
	res << arr1
end
puts res.inspect
			


