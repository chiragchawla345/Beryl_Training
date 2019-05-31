Dir.chdir("/home/beryl/Desktop/chirag1/Beryl_Training/Ruby")
puts Dir.pwd
puts Dir.entries("/home/beryl/Desktop/chirag1/").join("  ")   #ls
Dir.foreach("/home/beryl/Desktop/chirag1/") do |entry|
   puts "#{entry} #{entry.class}"
end