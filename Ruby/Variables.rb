$g=100
Temp=200
class A
	
	def get_a()
		puts "Enter the values of a"
		@a=gets.chomp
	end
	def put_a()
		ab=15

		puts "The value of a is  #{@a}"
		puts "The value of local variable is #{ab}"
		puts "The value of Constant variable is #{Temp}"
		ab+=1
		#puts "The value of ab is #{ab}"
	end
	@@count = 0
	def put_count()
		@@count = @@count + 1 
		puts "This is #{@@count} th Object"
	end
	def put_global()
		puts "This is Global Variable #{Temp}"
	end

end
a1=A.new
a1.get_a
a1.put_a
a1.put_count
a1.put_global
puts "Inside Main Global values is #{Temp}"