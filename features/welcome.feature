Feature:
    Como jugador
    Quiero poder entrar al programa
    Para poder controlar un robot

    Scenario: ver mensaje de bienvenida
    Given visito la pagina principal
    Then deberia ver el mensaje "Bienvenido a nuestro juego!"

    Scenario: ver el boton para iniciar
    Given visito la pagina principal
    Then deberia ver el boton "Disfrutalo"