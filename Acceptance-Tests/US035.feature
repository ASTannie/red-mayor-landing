Feature: Agendar consulta médica en línea

  Como adulto mayor,
  Quiero agendar una consulta médica desde la aplicación
  Para recibir atención sin tener que desplazarme.

  Scenario: Visualización del calendario de citas
    Given que el usuario accede a la sección de salud
    When selecciona “Agendar Consulta”
    Then la app muestra el calendario con las fechas y horas disponibles

  Scenario: Reserva exitosa de cita
    Given que el usuario selecciona fecha, hora y especialidad
    When presiona “Confirmar”
    Then el sistema agenda la cita
    And envía una notificación con el resumen de la atención

  Scenario: Intento de agendar sin seleccionar datos
    Given que el usuario ingresa a “Agendar Consulta”
    When intenta confirmar sin elegir fecha u hora
    Then el sistema muestra un mensaje indicando completar los campos faltantes
