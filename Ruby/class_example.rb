class Test
	@width
	@height
	def initialize(w, h)
		@width = w
		@height = h
	end
	def put_test
		puts @width
		puts @height
		to_s
	end
	private def to_s
		"#Width is : #{@width} & Height is : #{@height}"
	end
end
t1 = Test.new(20,30)
str = t1.put_test
puts "#{str} #{str.class}"