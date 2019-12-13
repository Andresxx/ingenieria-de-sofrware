require 'sinatra'
require './lib/board'
require './lib/robot'

# class App < Sinatra::Base

    #$Board = Board.new(0,0)

    $number_of_robots = 1
    $sizeY = 0
    $sizeX = 0
    $robots = []
    $listOfMoves = []
    $finalPositions = []

    get '/' do
        erb :home
    end

    get '/form' do
        # @number_of_robots = params[:players]
        erb :form
    end

    get '/game' do
        for i in 1..$listOfMoves.length
            $board.robotSingleMove(i,$listOfMoves[i-1])
            $finalPositions.push($board.getRobotFinalPosition(i));
            @finalPositions = $finalPositions
        end
        erb :game
    end

    post '/game' do
        #robots = []
        @size = $number_of_robots.to_i
        for i in 1..@size 
            concatX = "firstPositionX".concat(i.to_s)
            concatY = "firstPositionY".concat(i.to_s)
            concatD = "direction".concat(i.to_s)
            concatMoves = "movesOfRobot".concat(i.to_s)
            move = params[concatMoves]
            $listOfMoves.push(move)
            test2 = params[concatX].to_i
            $board.createNewRobot(params[concatX].to_i, params[concatY].to_i, params[concatD])
        end
        redirect "/game"
    end

    get '/players' do
        @number_of_robots = $number_of_robots
        erb :cars_form
    end

    post '/numberOfPlayers' do
        $number_of_robots = params[:players]
        $sizeY = params[:sizeY]
        $sizeX = params[:sizeX]
        $board = Board.new($sizeX,$sizeY)
        redirect "/players"
    end

    get '/reset' do
        $number_of_robots = 1
        $sizeY = 0
        $sizeX = 0
        $robots = []
        $listOfMoves = []
        $finalPositions = []
        redirect "/form"
    end
# end