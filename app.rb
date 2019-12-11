require 'sinatra'

class App < Sinatra::Base

    $number_of_players = 1

    get '/' do
        erb :home
    end

    get '/form' do
        @number_of_players = $number_of_players
        erb :form
    end

    get '/game' do
        @size = params[:Size]
        @FinalPositionX = params[:PositionX]
        @FinalPositionY = params[:PositionY]
        erb :game
    end

    post '/numberOfPlayers' do
        $number_of_players = params[:players]
        redirect "/form"
    end
end