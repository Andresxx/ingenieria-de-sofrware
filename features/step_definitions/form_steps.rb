
Given("visito la pagina del formulario de creacion") do
    visit '/form'
  end
  
  Then("deberia ver la etiqueta {string}") do |etiqueta|
    last_response.body.should =~ /#{etiqueta}/m
  end
  
  Then("el campo {string}") do |campo|
    last_response.body.should =~ /#{campo}/m
  end

  Then("deberia ver el campo {string} y llenarlo con {string}") do |etiqueta, valor|
    fill_in(etiqueta, :with => valor)
  end

  Then("deberia ver el campo numerico {string} y llenarlo con {string}") do |etiqueta, valor|
    fill_in(etiqueta, :with => valor)
  end

  Then("hago clic en el boton {string}") do |text|
    click_button(text)
  end

  Given("visito la pagina de jugadores") do
    visit '/players?sizeX=5&sizeY=5&players=1'
  end
  
  