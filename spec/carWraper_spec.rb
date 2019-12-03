require './lib/carWrapper'

describe 'Pruebas de la clase CarWrapper' do

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