require "sinatra"

get '/' do 
	redirect 'get_sandwich'
end

get '/get_sandwich' do 
	erb :sandwich
end

post '/get_sandwich' do 
	sandwich = params[:sandwich]
	redirect '/get_side?sandwich=' + sandwich
end

get '/get_side' do 
	sandwich = params[:sandwich]
	erb :side, :locals => {:sandwich => sandwich}
end

post '/side' do
	sandwich = params[:sandwich]
	side = params[:side]
	redirect '/final?sandwich=' + sandwich + '&side=' + side
end

get '/final' do 
	sandwich = params[:sandwich]
	side = params[:side]
	erb :final, :locals => {:sandwich => sandwich, :side => side}
end	