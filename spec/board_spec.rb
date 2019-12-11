require './lib/board'

describe 'Pruebas para crear un tablero' do

    before :each do |single|
        @board = Board.new(5, 5)
    end

    it "Deberia crearse un tablero con 5 columnas" do
        expect(@board.gerCols()).to eq 5
    end

    it "Deberia crearse un tablero con 5 filas" do
        expect(@board.gerRows()).to eq 5
    end
end


describe 'Pruebas para crear un robot en el tablero' do

    before :each do |single|
        @board = Board.new(5, 5)
    end

    it "Deberia haber un robot en la posicion final '2-2-E'" do
        @board.createNewRobot(2,2,'E')
        expect(@board.getRobotFinalPosition(1)).to eq '2-2-E'
    end

    it "No deberia haber un segundo robot en la posicion final '2-2-E'" do
        @board.createNewRobot(2,2,'E')
        expect(@board.getRobotFinalPosition(5)).to eq 'no-robot'
    end

    it "Dado un robor en la posicon '2-2-E' deberia estar en la posicion '4-2-E' si lo movemos dos veces" do
        @board.createNewRobot(2,2,'E')
        @board.moveRobot(1)
        @board.moveRobot(1)
        expect(@board.getRobotFinalPosition(1)).to eq '4-2-E'
    end

    it "Si intento mover un auto que no existe deberia darme mostrarme 'no-robot'" do
        @board.createNewRobot(2,2,'E')
        expect(@board.moveRobot(1)).to eq 'no-robot'
    end


end