def diamond(n)
	puts ""
	temp = n/2 +1
	s = temp
    e = temp
	for i in 1..n
		if(i < temp)
			#puts "#{temp} #{temp.class}"
		    #puts "#{s} #{s.class}"
		    for j in 1 ..n
		    	if(s<=j && j<=e)
		    		print "* "
		    	else
		    		print "  "
		    	end
		    end
		    s-=1
		    e+=1
		    puts ""
		elsif(i == temp)
			for j in 1..n
				print "* "
			end
			puts ""
		else
		    #puts "#{s} #{e}"
			s+=1
			e-=1
			for j in 1..n
				if( s <= j && j<= e)
					print "* "
				else 
					print "  "
				end
			end
			puts ""
		end
	end
end

puts "Enter an odd number"
n = gets.chomp
if (n.to_i%2 == 1)
	diamond(n.to_i)
else 
	puts "Please enter odd Number!!!"
end
