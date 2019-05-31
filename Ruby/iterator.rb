h1=Hash[1=>'a',2=>'b',3=>'c',4=>'d',5=>'e']
puts "#{h1}"
h1.each do |i|
	puts "#{i} #{i.class}"
end
h1.keys.each do |i|
	puts "#{i}"
end
h1.values.each do |i|
	puts "#{i}"
end
h1.each do |i|
	i.each do |j|
		print j.to_s+" "
	end
	puts""
end
h1.each do |key,val|
	puts "Key: #{key}   Value: #{val}"
end
h2=Hash.new
h2=h1.collect{|k,v| [k,v]}
puts h2