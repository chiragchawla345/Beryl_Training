def test(*a)
	puts "#{a.class}"
	a.each do |i|
		puts "#{i}"
		
	end
end
test 1, 2, 'ch', "sd", 3.45, 0..9, "chirag"
arr = Array(0..9)
test arr