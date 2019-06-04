# Exception 
def raise_and_rescue      
  begin
	a = 10         
    puts 'This is Before Exception Arise!'
         
    # using raise to create an exception   
    puts a / 10
   
    puts 'After Exception' 
   
  # using Rescue method 
  rescue     
    puts 'Finally Saved!'    
     
end    
   
puts 'Outside from Begin Block!'    
   
end   

def raise_and_rescue1      
  begin
	a = 10         
    puts 'This is Before Exception Arise!'
         
    # using raise to create an exception   
    puts a / 0
   
    puts 'After Exception' 
   
  # using Rescue method 
  rescue     
    puts 'Finally Saved!'    
     
end    
   
puts 'Outside from Begin Block!'    
   
end    
   
# calling method 
raise_and_rescue 
puts ""
raise_and_rescue1  #Exception is there