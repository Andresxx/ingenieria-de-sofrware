Given("visito la interfaz del juego") do
    visit('/game')
end

Then("deberia ver la posicion final {string}") do |message|
    expect(page).to have_content(message)
end
