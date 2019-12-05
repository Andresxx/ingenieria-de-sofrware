require './lib/carWrapper'

describe 'Pruebas de la creacion de un campo para un auto' do

    before :each do |single|
        @carWrapper = CarWrapper.new(1, 1, true)
    end

    it "deberia crearse un campo con la posicion x igual a 1" do
        expect(@carWrapper.getpositionX()).to eq 1
    end

    it "deberia crearse un campo con la posicion y igual a 1" do
        expect(@carWrapper.getpositionY()).to eq 1
    end

    it "deberia crearse vacio" do
        expect(@carWrapper.isTheWrapperEmpty()).to eq true
    end
end


describe 'Pruebas de la creacion de un auto en una posicion' do

    before :each do |single|
        @carWrapper = CarWrapper.new(1, 1, true)
        @carWrapper.setCarDirection('arriba')
    end

    it "deberia crearse un campo con la posicion x igual a 1" do
        expect(@carWrapper.getpositionX()).to eq 1
    end

    it "deberia crearse un campo con la posicion y igual a 1" do
        expect(@carWrapper.getpositionY()).to eq 1
    end

    it "deberia tener un auto" do
        expect(@carWrapper.isTheWrapperEmpty()).to eq false
    end

    it "deberia estar mirando arriba" do
        expect(@carWrapper.getDirection()).to eq 'arriba'
    end
end