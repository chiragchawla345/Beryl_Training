a=255
b=13
c=a&b
puts "#{c}  #{c.class.name}"
c = ~a
puts "#{c}  #{c.class.name}"
d=256
c= ~d
puts "#{c}"
c=256
d=c<<3
puts "#{d}"
c>>3
puts "#{c}"

c=true
d=true
e=c && d
puts "#{e}"

c=true
d=true
e=c and d
puts "#{e}"

c=0
d=20
e=c && d
puts "#{e}"
if (c && d)
	puts " if block #{20 || 10}"
end

e=(c==d)? "true ": "false"
puts "#{e} #{e.class.name}"
f
f=10
puts "#{f} New"