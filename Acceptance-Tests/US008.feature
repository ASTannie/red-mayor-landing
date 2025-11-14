Feature: Botón de emergencia

  Como adulto mayor,
  Quiero activar un botón de emergencia visible y accesible
  Para recibir ayuda inmediata en caso de caída o malestar.

  Scenario: Activación correcta del botón de emergencia
    Given que el usuario presiona el botón de emergencia
    When el sistema detecta la activación
    Then envía alertas a los contactos de confianza registrados
    And muestra un mensaje indicando que la ayuda está en camino

  Scenario: Activación sin contactos registrados
    Given que el usuario activa el botón de emergencia
    When no existen contactos añadidos
    Then la app muestra un mensaje indicando que debe agregar contactos
    And sugiere ir a la sección “Contactos de confianza”
