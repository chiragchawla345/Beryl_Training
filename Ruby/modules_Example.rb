module Trig
	PI=3.141592
	def Trig.sin(x)
		puts "Trig sin value is #{x}"
	end
	def Trig.cos(x)
		puts "Trig cos value is #{x}"
	end
end
module Mortal
	Bad=0
	Good=1
	def Mortal.sin(x)
		puts "Good" if (x==1)
		puts "Bad" if (x==0)
	end
end
Trig.sin(Trig::PI/4)
Mortal.sin(Mortal::Bad)