Given("visito la pagina principal") do
    visit '/'
  end
  
  Then("deberia ver el mensaje {string}") do |mensaje|
    last_response.body.should =~ /#{mensaje}/m
  end
  
  Then("deberia ver el boton {string}") do |boton|
    last_response.body.should =~ /#{boton}/m
  end
  