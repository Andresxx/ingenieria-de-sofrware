require './lib/board'

describe 'Pruebas para crear un tablero' do

    before :each do |single|
        @board = Board.new(5, 5)
    end

    it "deberia crearse un tablero con 5 filas" do
        expect(@board.getRows()).to eq 5
    end

    it "deberia crearse un tablero con 5 columnas" do
        expect(@board.getRows()).to eq 5
    end

    it "deberia crearse con todos los campos vacios" do
        for i in (1..@board.getRows()) do
            for j in (1..@board.getRows()) do
                expect(@board.isSlotEmpty(i,j)).to eq true
            end
        end
    end

end
 

describe 'Pruebas para posicionar un auto' do

    before :each do |single|
        @board = Board.new(7, 7)
        @board.setPostionForCar(5, 5, 'arriba')
    end
    
    it "deberia haber un auto en la posicion 5-5" do
        expect(@board.isSlotEmpty(5,5)).to eq false
    end
end

describe 'Pruebas para mover un auto desde la posicion 1-1' do

    before :each do |single|
        @board = Board.new(7, 7)
        @board.setPostionForCar(1, 1, 'arriba')
    end
    
    it "deberia haber un auto en la posicion 1-1" do
        expect(@board.isSlotEmpty(1,1)).to eq false
    end

    it "el auto deberia estar mirando arriba" do
        expect(@board.getCarPositon(1,1)).to eq 'arriba'
    end
end


describe 'Pruebas para encontrar la posicion final de un auto' do

    before :each do |single|
        @board = Board.new(7, 7)
        # @board.cleanBoard()
        @board.setPostionForCar(2, 2, 'abajo')
    end

    it "el auto deberia estar mirando abajo" do
        expect(@board.getCarPositon(2,2)).to eq 'abajo'
    end

    it "deberia haber un auto en la posicion 2-2" do
        expect(@board.isSlotEmpty(2,2)).to eq false
    end

    
    it "no deberia haber un auto en la posicion 4-4" do
        expect(@board.isSlotEmpty(4,4)).to eq true
    end

    it "deberia la direccion 2-2" do
        expect(@board.getCarDirection(2,2)).to eq '2-2'
    end

    it "deberia encontar un auto en la posicion '2 2 abajo'" do
        expect(@board.getCarFinalPosition()).to eq '2-2-abajo'
    end
end

describe "Pruebas para cambiar direccion de un auto en la posicion '3-3-arriba' a '3-3-abajo'" do

    before :each do |single|
        @board = Board.new(7, 7)
        @board.setPostionForCar(3, 3, 'arriba')
    end
    
    it "deberia haber un auto en la posicion 3-3" do
        expect(@board.isSlotEmpty(3,3)).to eq false
    end

    it "el auto deberia estar mirando arriba" do
        expect(@board.getCarPositon(3,3)).to eq 'arriba'
    end
end
    
