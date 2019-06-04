module A
	def a
		puts "A_a"
	end
end
module B
	def a
		puts "B_b"
	end
end
class Test1
	include B
	include A
	def put_t
		puts "Test1_t"
	end
end
t1 = Test1.new
t1.a
t1.a
t1.put_t