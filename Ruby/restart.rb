a = ""
for i in 1..5 
	a = gets.chomp
	# redo will restart the loop [or] block without incrementation or decrementation 
	if(a != "chirag")
		redo
	end
end
