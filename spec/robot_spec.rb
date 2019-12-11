require './lib/robot'

describe 'Pruebas de la creacion de un robot' do

    before :each do |single|
        @robot = Robot.new(3, 3, 'E',5,5)
    end

    it "Se debe crear un robot con la coordenada x igual a 3" do
        expect(@robot.getCoordinateX()).to eq 3
    end

    it "Se debe crear un robot con la coordenada y igual a 3" do
        expect(@robot.getCoordinateY()).to eq 3
    end

    it "Se debe crear un robot con la direccion igual a 'E'" do
        expect(@robot.getDirection()).to eq 'E'
    end

    it "Se debe crear un robot posicion final igual a '3-3-E'" do
        expect(@robot.getFinalPosition()).to eq '3-3-E'
    end

end

describe 'Pruebas movimiento de un robot' do

    # it "Una vez que se cambia la posicion esta deberia ser 'O'" do
    #     @robot = Robot.new(3, 3, 'E',5,5)
    #     @robot.setDirection('O')
    #     expect(@robot.getDirection()).to eq 'O'
    # end

    it "Un robot creado en la posicion '3-3-E' deberia estar en la posicon '4-3-E' si lo movemos una vez" do
        @robot = Robot.new(3, 3, 'E',5,5)
        @robot.move()
        expect(@robot.getFinalPosition()).to eq '4-3-E'
    end

    it "Un robot creado en la posicion '3-3-E' no deberia pasar la posicon '4-3-E' si lo movemos tres veces" do
        @robot = Robot.new(3, 3, 'E',5,5)
        @robot.move()
        @robot.move()
        @robot.move()
        @robot.move()
        expect(@robot.getFinalPosition()).to eq '4-3-E'
    end

    it "Un robot creado en la posicion '1-3-O' no deberia pasar la posicon '0-3-O' si lo movemos tres veces" do
        @robot = Robot.new(1, 3, 'O',5,5)
        @robot.move()
        @robot.move()
        @robot.move()
        expect(@robot.getFinalPosition()).to eq '0-3-O'
    end

    it "Un robot creado en la posicion '1-3-N' deberia esta en la posicion '1-0-N' si lo movemos tres veces" do
        @robot = Robot.new(1, 3, 'N',5,5)
        @robot.move()
        @robot.move()
        @robot.move()
        expect(@robot.getFinalPosition()).to eq '1-0-N'
    end

    it "Un robot creado en la posicion '1-3-N' no deberia pasar la posicon '1-0-N' si lo movemos cuatro veces" do
        @robot = Robot.new(1, 3, 'N',5,5)
        @robot.move()
        @robot.move()
        @robot.move()
        @robot.move()
        expect(@robot.getFinalPosition()).to eq '1-0-N'
    end

    it "Un robot creado en la posicion '2-3-S' no deberia pasar la posicon '2-4-S' si lo movemos tres veces" do
        @robot = Robot.new(2, 3, 'S',5,5)
        @robot.move()
        @robot.move()
        @robot.move()
        expect(@robot.getFinalPosition()).to eq '2-4-S'
    end


end