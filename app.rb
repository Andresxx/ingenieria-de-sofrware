require 'sinatra'

class App < Sinatra::Base

    get '/' do
        erb :home
    end

    get '/form' do
        erb :form
    end

    get '/game' do
        @size = params[:Size]
        @FinalPositionX = params[:PositionX]
        @FinalPositionY = params[:PositionY]
        erb :game
    end
    
end