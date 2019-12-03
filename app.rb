require 'sinatra'

get '/' do
    erb :home
end

get '/game' do
    erb :game
end

post '/Generar' do
    @size = params[:size]
    @positionX = params[:positionX]
    @positionY = params[:positionY]
end