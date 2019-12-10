require './lib/robot'

describe 'Pruebas de la creacion de un robot' do

    before :each do |single|
        @robot = Robot.new(3, 3, 'derecha',5,5)
    end

    it "Se debe crear un robot con la coordenada x igual a 3" do
        expect(@robot.getCoordinateX()).to eq 3
    end

    it "Se debe crear un robot con la coordenada y igual a 3" do
        expect(@robot.getCoordinateY()).to eq 3
    end

    it "Se debe crear un robot con la direccion igual a 'derecha'" do
        expect(@robot.getDirection()).to eq 'derecha'
    end

    it "Se debe crear un robot posicion final igual a '3-3-derecha'" do
        expect(@robot.getFinalPosition()).to eq '3-3-derecha'
    end

end

describe 'Pruebas movimiento de un robot' do

    it "Una vez que se cambia la posicion esta deberia ser 'izquierda'" do
        @robot = Robot.new(3, 3, 'derecha',5,5)
        @robot.setDirection('izquierda')
        expect(@robot.getDirection()).to eq 'izquierda'
    end

    it "Un robot creado en la posicion '3-3-derecha' deberia estar en la posicon '4-3-derecha' si lo movemos una vez" do
        @robot = Robot.new(3, 3, 'derecha',5,5)
        @robot.move()
        expect(@robot.getFinalPosition()).to eq '4-3-derecha'
    end

    it "Un robot creado en la posicion '3-3-derecha' no deberia pasar la posicon '4-3-derecha' si lo movemos tres veces" do
        @robot = Robot.new(3, 3, 'derecha',5,5)
        @robot.move()
        @robot.move()
        @robot.move()
        @robot.move()
        expect(@robot.getFinalPosition()).to eq '4-3-derecha'
    end

    it "Un robot creado en la posicion '1-3-izquierda' no deberia pasar la posicon '0-3-izquierda' si lo movemos tres veces" do
        @robot = Robot.new(1, 3, 'izquierda',5,5)
        @robot.move()
        @robot.move()
        @robot.move()
        expect(@robot.getFinalPosition()).to eq '0-3-izquierda'
    end

    it "Un robot creado en la posicion '1-3-arriba' deberia esta en la posicion '1-0-arriba' si lo movemos tres veces" do
        @robot = Robot.new(1, 3, 'arriba',5,5)
        @robot.move()
        @robot.move()
        @robot.move()
        expect(@robot.getFinalPosition()).to eq '1-0-arriba'
    end

    it "Un robot creado en la posicion '1-3-arriba' no deberia pasar la posicon '1-0-arriba' si lo movemos cuatro veces" do
        @robot = Robot.new(1, 3, 'arriba',5,5)
        @robot.move()
        @robot.move()
        @robot.move()
        @robot.move()
        expect(@robot.getFinalPosition()).to eq '1-0-arriba'
    end

    it "Un robot creado en la posicion '2-3-abajo' no deberia pasar la posicon '2-4-abajo' si lo movemos tres veces" do
        @robot = Robot.new(2, 3, 'abajo',5,5)
        @robot.move()
        @robot.move()
        @robot.move()
        expect(@robot.getFinalPosition()).to eq '2-4-abajo'
    end


end