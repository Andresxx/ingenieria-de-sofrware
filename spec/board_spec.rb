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
        @board.setPostionForCar(5, 5)
    end
    
    it "deberia haber un auto en la posicion 5-5" do
        expect(@board.isSlotEmpty(5,5)).to eq false
    end
end

describe 'Pruebas para mover un auto desde la posicion 1-1' do

    before :each do |single|
        @board = Board.new(7, 7)
        @board.setPostionForCar(1, 1)
    end
    
    it "deberia haber un auto en la posicion 1-1" do
        expect(@board.isSlotEmpty(1,1)).to eq false
    end

    # it "el auto deberia estar estar en la posicon 2-1 si subimos" do
    #     expect(@board.isSlotEmpty(1,1)).to eq false
    # end
end
    
