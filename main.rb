require 'sinatra'
require 'mandrill'

get '/home' do
	@title = "Hipster Bike"
	erb :home
end

get '/about_us' do 
	@title = "About Us"
	erb :about_us
end

get '/contact_us' do 
	@title = "Contact"
	erb :contact_us
end

get '/rent_now' do 
	@title = "Rent"
	erb :rent_now
end

# post '/send_email' do
	
# 	m = Mandrill::API.new

# 	message = { 
# 	 :subject=> "Customer request from mandrill", 
# 	 :from_name=>,
# 	 :text=>,
# 	 :to=>[ "benloustau@gmail.com"
# 	 { 
# 	 :email=> "hipster_bike@gmail.com", 
# 	 :name=> "hipster_bike" 
# 	 } 
# 	 ], 
# 	 :html=>, 
# 	 :from_email=>"benloustau@gmail.com" 
# 	} 
# 	sending = m.messages.send message

# send_email("Customer Mail")



