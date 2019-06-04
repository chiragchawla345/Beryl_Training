require 'abbrev'
require 'pp'

h1 = Abbrev.abbrev(['ruby rules']) 

#=>It will give all the abbrevations 

h1.each do | key,value |
	print "#{key} , "
end
puts ""

#puts Abbrev.abbrev(%w{ ruby rules })
#=>It will give unambiguous Abbrevations i.e abbrev(ruby) | abbrev(rules) - abbrev(ruby) & abbrev (rules) 

h1 = Abbrev.abbrev(%w{ ruby rules })
h1.each do | key,value |
	print "#{key} "
end
puts ""

h1 = Abbrev.abbrev(%w{ car box cone crab })
h1.each do | key,value |
	print "#{key} "
end
puts ""

#=>It contains Unambiguous Abbrevation which contains atleast obe b

h1 = Abbrev.abbrev(%w{ car bbx cone crab }, /b/)
h1.each do | key,value |
	print "#{key} "
end
puts ""