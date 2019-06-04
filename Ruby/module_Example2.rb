$LOAD_PATH << '.'

require 'mortal'
class Test
	include Mortal

	def put_test
		s = 10
		puts "#{s}"
		puts "#{Trig::PI}"
		puts "#{Mortal::Good}"
		puts "#{Mortal::Bad}"
		Trig.sin(0)
		Mortal.sin(0)
	end
end
t1 = Test.new
t1.sin(0) 
# Error if function is Defined as Mortal.sin(x)
# Work properly if function is defined like def sin(x) in Mortal module




