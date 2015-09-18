def get_name
	puts "Hello! What's your name?" 
	name = gets.chomp
end

def determine_current_hour
	current_time = Time.new
	current_hour = current_time.hour
end

def greeting
	name = get_name
	current_hour = determine_current_hour

	if(current_hour > 3 and current_hour < 12)
		time = "morning"
	elsif(current_hour >= 12 and current_hour < 18)
		time = "afternoon"
	elsif(current_hour >= 18 || current_hour <= 3)
		time = "evening"
	end	

	puts "Good #{time}, #{name.capitalize}!"
end

greeting
