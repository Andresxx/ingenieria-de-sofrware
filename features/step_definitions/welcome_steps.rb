Given("visito la pagina principal") do
  visit('/')
end

Then("deberia ver el mensaje {string}") do |message|
  body.shoud =~ /#{message}/m
end

Then("deberia ver el boton {string}") do |start|
  click_on(start).click
end