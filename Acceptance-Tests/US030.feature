Feature: Programas sociales según ubicación

  Como adulto mayor,
  Quiero visualizar los programas sociales activos en mi zona
  Para acceder a beneficios.

  Scenario: Visualización de programas cercanos
    Given que el usuario accede a “Programas Sociales”
    When activa su ubicación
    Then la app muestra los programas disponibles cerca de su zona
    And muestra información como fechas y requisitos

  Scenario: Proceso de inscripción a un programa
    Given que el usuario visualiza un programa social
    When selecciona “Inscribirme”
    Then la app muestra los pasos necesarios para completar la inscripción

  Scenario: Acceso sin activar ubicación
    Given que el usuario entra a “Programas Sociales”
    When no activa permisos de ubicación
    Then la app muestra un mensaje solicitando activar la ubicación
