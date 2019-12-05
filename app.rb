require 'sinatra'

class App < Sinatra::Base

    get '/' do
        erb :home
    end

    get '/form' do
        erb :form
    end

    get '/game' do
        erb :game
    end

    post '/Generar' do
        @size = params[:size]
        @positionX = params[:positionX]
        @positionY = params[:positionY]
    end
    
end