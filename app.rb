require "sinatra"

get '/' do 
	redirect 'get_sandwich'
end

get '/get_sandwich' do 
	erb :sandwich
end

post '/sandwich_choice' do 
	sandwich = params[:sandwich]
	redirect '/final?sandwich=' + sandwich
end

get '/final' do 
	sandwich = params[:sandwich]
	erb :final, :locals => {:sandwich => sandwich}
end	