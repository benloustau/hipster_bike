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

post '/send_email' do

	m = Mandrill::API.new
	comment = "<html><body> #{params[:comment]} </body></html>"
	message = { 
	 :subject=> "Customer request from mandrill", 
	 :from_name=>"Customer",
	 :text=> params[:comment],
	 :to=>[ 
	 { 
	 :email=> "benloustau@gmail.com", 
	 :name=> "hipster_bike" 
	 } 
	 ], 
	 :html=> comment,
	 :from_email=> params[:from], 
	} 
	sending = m.messages.send message
	puts sending
	redirect '/home'
end

post '/rent_form' do

	m = Mandrill::API.new

	message = { 
	 :subject=> "Confirmation Email", 
	 :from_name=>"Hipster Bike",
	 :text=> "Your bike is ready for pickup!",
	 :to=>[ 
	 { 
	 :email=> params[:eMail_address], 
	 :name=> params[:name]
	 } 
	 ],  
	 :html=>"<html><body>Your bike is ready for pickup!</body></html>",
	 :from_email=> "benloustau@gmail.com", 
	} 
	sending = m.messages.send message
	puts sending
	redirect '/home'
end




