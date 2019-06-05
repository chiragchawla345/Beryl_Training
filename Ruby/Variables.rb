# variables
# Global   : Starts with $
# class    : Starts with @@
# instance : Starts with @
# final    : starts with first character in caps
$g = 100

class A
	Temp = 200
	bc = 300
	def get_a()
		puts "Enter the values of a"
		@a = gets.chomp
	end

	def put_a()
		ab = 15
		puts "The value of a is  #{@a}"
		puts "The value of local variable is #{ab}"
		puts "The value of Constant variable is #{Temp}"
		ab += 1
	end

	@@count = 0
	puts "#{bc}"
	def put_count()
		@@count = @@count + 1 
		puts "This is #{@@count} th Object"
	end
	def put_global()
		puts "This is Global Variable #{$g}"
	end

end
a1 = A.new
a1.get_a
a1.put_a
a1.put_count
a1.put_global
puts "Inside Main Global values is #{$g}"
a2 = A.new
a2.get_a
a2.put_a
a2.put_count
a2.put_global
puts "Inside Main Global values is #{$g}"