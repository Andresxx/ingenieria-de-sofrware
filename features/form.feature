Feature:
    Como jugador
    Quiero poder crear el trablero
    Para poder crear un auto

    Scenario: ver titulo de la vista
    Given visito la pagina del formulario de creacion
    Then deberia ver el campo "Creation Form"

    Scenario: llenar el espacio del tamaño del tablero
    Given visito la pagina del formulario de creacion
    Then deberia ver el campo "Size"
    
    Scenario: llenar la cordenada en el eje X
    Given visito la pagina del formulario de creacion
    Then deberia ver el campo "PositionX"

    Scenario: llenar la cordenada en el eje Y
    Given visito la pagina del formulario de creacion
    Then deberia ver el campo "PositionY"

    Scenario: ver el boton para crear
    Given visito la pagina del formulario de creacion
    Then deberia hacer crearse al hacer click "Create"


  