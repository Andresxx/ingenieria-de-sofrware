Given("visito la pagina principal") do
  visit('/')
end

Then("deberia ver el mensaje {string}") do |message|
  expect(page).to have_content(message)
end

Then("deberia hacer click en el boton {string}") do |start|
  
  expect(page).to have_button(start)
end
