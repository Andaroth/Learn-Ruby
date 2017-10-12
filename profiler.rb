print "What's your first name? "
first_name = gets.chomp.capitalize
print "What's your last name? "
last_name = gets.chomp.capitalize
print "What city are you living in? "
city = gets.chomp.capitalize
print "What state? "
state = gets.chomp.upcase

first_name.capitalize!
last_name.capitalize!
city.capitalize!
state.upcase!

@name = "Your "+first_name+" "+last_name+" and you live in "+city+" "+state

puts "#{@name}."