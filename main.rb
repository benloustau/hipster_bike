require 'sinatra'
require 'mandrill'

get '/home' do
	erb :home_erb
end
get '/about_us' do 
	erb :about_us
end

get '/contact_us' do 
	erb :contact_us
end

get '/rent_now' do 
	erb :rent_now
end



