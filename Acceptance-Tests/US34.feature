Feature: Recordatorio de medicamentos

  Como adulto mayor,
  Quiero recibir recordatorios para tomar mis medicamentos
  Para no olvidar mis horarios.

  Scenario: Notificación enviada a la hora programada
    Given que el usuario registra un medicamento con nombre, dosis y horario
    When llega la hora programada
    Then la app envía un recordatorio
    And muestra un mensaje con la dosis y opciones “Tomado” o “Recordar más tarde”

  Scenario: Registro exitoso de dosis tomada
    Given que el usuario recibe un recordatorio
    When selecciona la opción “Tomado”
    Then el sistema registra la dosis como cumplida
    And actualiza el historial de medicación

  Scenario: Recordatorio pospuesto
    Given que llega la notificación
    When el usuario selecciona “Recordar más tarde”
    Then el sistema programa un nuevo recordatorio para minutos después
