require 'sinatra'

def determine_current_hour
	current_time = Time.new
	current_hour = current_time.hour
end

def greeting(name)
	current_hour = determine_current_hour

	if(current_hour > 3 and current_hour < 12)
		time = "morning"
	elsif(current_hour >= 12 and current_hour < 18)
		time = "afternoon"
	elsif(current_hour >= 18 || current_hour <= 3)
		time = "evening"
	end
	my_greeting = "Good #{time}, #{name.capitalize}!"

end

get '/:name' do
  name = params[:name].capitalize
  @my_greeting = greeting(name)

  erb :home
end

get '/time/' do
	@time = determine_current_hour
	erb :time
end
