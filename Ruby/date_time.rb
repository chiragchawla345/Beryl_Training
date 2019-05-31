time1=Time.new    #time object holsds the current time
puts "#{time1.inspect}"
puts "#{time1}"  #both are similar representing the current time

puts time1.year    # => Year of the date 
puts time1.month   # => Month of the date (1 to 12)
puts time1.day     # => Day of the date (1 to 31 )
puts time1.wday    # => 0: Day of week: 0 is Sunday
puts time1.yday    # => 365: Day of year
puts time1.hour    # => 23: 24-hour clock
puts time1.min     # => 59
puts time1.sec     # => 59
puts time1.usec    # => 999999: microseconds
puts time1.zone    # => "IST": timezone name

time2=Time.local(2008, 7, 8, 14, 14 ,30)  #Holds the time and date provided in local timezone
puts "#{time2}"
time2=Time.utc(2008, 7, 8, 14, 14 ,30)  #Holds the time and date provided in UTC timezone
puts "#{time2}"  
time2=Time.gm(2008, 7, 8, 14, 14 ,30)  #Holds the time and date provided in UTC timezone
puts "#{time2}" 
time2=Time.local(2008) #Holds the time and date provided in local timezone (2008-01-01 00:00:00 +0530)
puts "#{time2}" 

arr=Time.new.to_a    #Hols all components of time in array
p arr
puts "#{arr}"
 
time = Time.new
values = time.to_a
puts Time.utc(*values) #local scale to UTC

time=Time.now.to_i #time is Converted into seconds
p time
p time.class

time=Time.new.to_f #time is Converted into seconds including microseconds
p time
p time.class

time=Time.new
p time
time.gmtime  #convert to utc
p time
puts ""
time = Time.new
puts time.to_s
puts time.ctime

puts time.localtime
puts time.strftime("%Y-%m-%d %H:%M:%S %D %Z %A")
puts time.strftime("%a") #abbrevated Week day Name
puts time.strftime("%A") #Full week day name
puts time.strftime("%b") # Abbrevated Month Name
puts time.strftime("%B") #Full Month name
puts time.strftime("%c") #Time and Date in Preffered Format
puts time.strftime("%d") #Date of month
puts time.strftime("%H") #Hour of day
puts time.strftime("%l") #Hour in 12-hour clock
puts time.strftime("%j") #Day of the year
puts time.strftime("%m") #month of the year
puts time.strftime("%M") #Minute of the Hour
puts time.strftime("%p") #AM or PM
puts time.strftime("%s") #Second of total time
puts time.strftime("%S") #Second of minuteputs time.strftime("%d")
puts time.strftime("%U") #Week no of current year starting from first day of year as first sunday
puts time.strftime("%w") #Day of week
puts time.strftime("%x") #Preferred Representation of Date only
puts time.strftime("%y") #Year without Century
puts time.strftime("%Y") #Year with Century
puts time.strftime("%z") #Time Zone
puts time.strftime("%Z") #time Zone Name
