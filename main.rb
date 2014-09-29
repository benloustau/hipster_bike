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



