Feature: Chat con voluntarios

  Como adulto mayor,
  Quiero comunicarme por chat con un voluntario disponible
  Para recibir orientación o apoyo emocional.

  Scenario: Inicio de chat con voluntario disponible
    Given que el usuario accede a “Voluntarios disponibles”
    When selecciona un voluntario
    Then el sistema abre un chat
    And permite enviar y recibir mensajes en tiempo real

  Scenario: Finalizar conversación
    Given que el usuario está en el chat
    When presiona “Finalizar”
    Then la conversación se cierra
    And el sistema guarda el historial

  Scenario: No hay voluntarios disponibles
    Given que el usuario abre “Voluntarios disponibles”
    When no existen voluntarios activos
    Then la app muestra el mensaje “No hay voluntarios disponibles en este momento”
