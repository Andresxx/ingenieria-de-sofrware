Feature:
    Como jugador
    Quiero poder ver la terreno
    Para poder controlar el movvimiento del auto

    Scenario: ver titulo del juego
    Given visito la interfaz del juego
    Then deberia ver el mensaje "Game"

    Scenario: ver la posicion final en X del auto
    Given visito la interfaz del juego
    Then deberia ver la posicion final "FinalPositionX"

    Scenario: ver la posicion final en Y del auto
    Given visito la interfaz del juego
    Then deberia ver la posicion final "FinalPositionY"