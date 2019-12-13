Feature:
    Como jugador
    Quiero poder crear el trablero
    Para poder crear un auto

    Scenario: Ver el formulario para crear un tablero
    Given visito la pagina del formulario de creacion
    Then deberia ver la etiqueta "Tamaño Vertical"
    And el campo "sizeX"
    Then deberia ver la etiqueta "Tamaño Horizontal"
    And el campo "sizeY"
    Then deberia ver la etiqueta "Cantidad de jugadores"
    And el campo "players"
    

    Scenario: Llenar el formulario para crear un tablero
    Given visito la pagina del formulario de creacion
    Then deberia ver el campo "sizeX" y llenarlo con "5"
    And deberia ver el campo "sizeY" y llenarlo con "5"
    And deberia ver el campo numerico "players" y llenarlo con "1"



 Scenario: Llenar el formulario para crear un tablero
    Given visito la pagina del formulario de creacion
    And deberia ver el campo "sizeX" y llenarlo con "5"
    And deberia ver el campo "sizeY" y llenarlo con "5"
    And deberia ver el campo numerico "players" y llenarlo con "1"
    When hago clic en el boton "Generar jugadores"
   


 Scenario: Llenar el formulario para un auto
    Given visito la pagina de jugadores
    Then deberia ver la etiqueta "Automoviles"
    And deberia ver la etiqueta "Posicion Inicial Vertical"
    And deberia ver la etiqueta "Posicion Inicial Horizontal"
    And deberia ver la etiqueta "Direccion"
    And deberia ver la etiqueta "Lista De Movimientos"




    


    #  Scenario: Llenar el formulario para crear un tablero
    # Given visito la pagina del formulario de creacion
    # And deberia ver el campo "sizeX" y llenarlo con "5"
    # And deberia ver el campo "sizeY" y llenarlo con "5"
    # And deberia ver el campo numerico "players" y llenarlo con "1"
    # When hago clic en el boton "Generar jugadores"
    # Then deberia ver el campo "firstPositionY" y llenarlo con "1"
    # And deberia ver el campo "firstPositionX" y llenarlo con "1"
    # And deberia ver el campo "direction" y llenarlo con "E"
    # And deberia ver el campo "movesOfRobot" y llenarlo con "AAIA"

# Scenario: Ver la lista de movimientos finales de un auto
#     Given visito la pagina del formulario de creacion
#     And deberia ver el campo "sizeX" y llenarlo con "5"
#     And deberia ver el campo "sizeY" y llenarlo con "5"
#     And deberia ver el campo numerico "players" y llenarlo con "1"
#     And hago clic en el boton "Generar jugadores"
#     And deberia ver el campo "firstPositionY" y llenarlo con "1"
#     And deberia ver el campo "firstPositionX" y llenarlo con "1"
#     And deberia ver el campo "direction" y llenarlo con "E"
#     And deberia ver el campo "movesOfRobot" y llenarlo con "AAIA"
    # When hago clic en el boton "Jugar"
    # Then deberia ver la etiqueta "Posiciones Finales"
    # And deberia ver la etiqueta "Robot1: 3-0-N"

    # And deberia ver el campo "Size"
    # And deberia ver el campo "Size"

    
    # Scenario: llenar la cordenada en el eje X
    # Given visito la pagina del formulario de creacion
    # Then deberia ver el campo "PositionX"

    # Scenario: llenar la cordenada en el eje Y
    # Given visito la pagina del formulario de creacion
    # Then deberia ver el campo "PositionY"

    # Scenario: ver el boton para crear
    # Given visito la pagina del formulario de creacion
    # Then deberia hacer crearse al hacer click "Create"


  