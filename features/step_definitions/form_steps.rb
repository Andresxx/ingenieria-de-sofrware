Given("visito la pagina del formulario de creacion") do
    visit('/form')
end

Then("deberia ver el campo {string}") do |message|
    expect(page).to have_content(message)
end

Then("deberia hacer crearse al hacer click {string}") do |start|
    expect(page).to have_content(start)
end