<div align="center">

<img src="assets/img/upc/upc-logo.png" alt="Logo UPC" width="120"/>

# Universidad Peruana de Ciencias Aplicadas

## Carrera de Ingeniería de Software

**1ACC0238**
<br>
**Aplicaciones para Dispositivos Móviles**

NRC

**4950**

# Informe de Trabajo Final

<br>

Docente

**Mayta Guillermo, Jorge Luis**

Equipo

**CogniTech**

Proyecto

**MindFlow**
<br>
<br>

### Integrantes


| Código      | Apellidos y Nombres |
| ----------- | -------------------- |
| u202412462  | Cabrera Sotelo, Camila Celeste |
| u202410421  | Dias de la Cruz, Sebastian Gabriel |
| u202413169  | Güere Calero, Fernando Julio |
| U202410024  | Jáuregui Cerna, Jean Franco |
| U202410382  | Limache Coronel, Imanol Fabrizio |

<br>


**Periodo 202620**

**Setiembre 2026**

</div>

---

# Registro de Versiones del Informe



<table>
  <tr>
    <th>Versión</th>
    <th>Fecha</th>
    <th>Autor</th>
    <th>Descripción de modificación</th>
  </tr>
  <!-- 
  <tr>
    <td><b>Primera Entrega (TB1)</b></td>
    <td>[Fecha]</td>
    <td>[Autor(es)]</td>
    <td>[Avance]</td>
  </tr>
  <tr>
    <td><b>Segunda Entrega (TP)</b></td>
    <td>[Fecha]</td>
    <td>[Autor(es)]</td>
    <td>[Avance]</td>
  </tr>
  <tr>
    <td><b>Tercera Entrega (TB2)</b></td>
    <td>[Fecha]</td>
    <td>[Autor(es)]</td>
    <td>[Avance]</td>
  </tr>
  <tr>
    <td><b>Cuarta Entrega (TF)</b></td>
    <td>[Fecha]</td>
    <td>[Autor(es)]</td>
    <td>[Avance]</td>
  </tr>
  -->
</table>
-->

---

# Project Report Collaboration Insights

---

# Contenido

## Tabla de Contenidos

- [Registro de Versiones del Informe](#registro-de-versiones-del-informe)
- [Project Report Collaboration Insights](#project-report-collaboration-insights)
- [Contenido](#contenido)
  - [Tabla de Contenidos](#tabla-de-contenidos)
- [Student Outcome](#student-outcome)
- [Objetivos SMART](#objetivos-smart)
- [Capítulo I: Presentación](#capítulo-i-presentación)
  - [1.1. Startup Profile](#11-startup-profile)
    - [1.1.1. Descripción de la Startup](#111-descripción-de-la-startup)
    - [1.1.2. Perfiles de integrantes del equipo](#112-perfiles-de-integrantes-del-equipo)
  - [1.2. Solution Profile](#12-solution-profile)
    - [1.2.1. Antecedentes y problemática](#121-antecedentes-y-problemática)
    - [1.2.2. Lean UX Process](#122-lean-ux-process)
      - [1.2.2.1. Lean UX Problem Statements](#1221-lean-ux-problem-statements)
      - [1.2.2.2. Lean UX Assumptions](#1222-lean-ux-assumptions)
      - [1.2.2.3. Lean UX Hypothesis Statements](#1223-lean-ux-hypothesis-statements)
      - [1.2.2.4. Lean UX Canvas](#1224-lean-ux-canvas)
  - [1.3. Segmentos objetivo](#13-segmentos-objetivo)
- [Capítulo II: Requirements Development and Software Solution Design](#capítulo-ii-requirements-development-and-software-solution-design)
  - [2.1. Competidores](#21-competidores)
    - [2.1.1. Análisis competitivo](#211-análisis-competitivo)
    - [2.1.2. Estrategias y tácticas frente a competidores](#212-estrategias-y-tácticas-frente-a-competidores)
  - [2.2. Entrevistas](#22-entrevistas)
    - [2.2.1. Diseño de entrevistas](#221-diseño-de-entrevistas)
    - [2.2.2. Registro de entrevistas](#222-registro-de-entrevistas)
    - [2.2.3. Análisis de entrevistas](#223-análisis-de-entrevistas)
  - [2.3. Needfinding](#23-needfinding)
    - [2.3.1. User Personas](#231-user-personas)
    - [2.3.2. User Task Matrix](#232-user-task-matrix)
    - [2.3.3. User Journey Mapping](#233-user-journey-mapping)
    - [2.3.4. Empathy Mapping](#234-empathy-mapping)
    - [2.3.5. Big Picture EventStorming](#235-big-picture-eventstorming)
    - [2.3.6. Ubiquitous Language](#236-ubiquitous-language)
  - [2.4. Requirements Specification](#24-requirements-specification)
    - [2.4.1. User Stories](#241-user-stories)
    - [2.4.2. Impact Mapping](#242-impact-mapping)
    - [2.4.3. Product Backlog](#243-product-backlog)
  - [2.5. Strategic-Level Domain-Driven Design](#25-strategic-level-domain-driven-design)
    - [2.5.1. EventStorming](#251-eventstorming)
      - [2.5.1.1. Candidate Context Discovery](#2511-candidate-context-discovery)
      - [2.5.1.2. Domain Message Flows Modeling](#2512-domain-message-flows-modeling)
      - [2.5.1.3. Bounded Context Canvases](#2513-bounded-context-canvases)
    - [2.5.2. Context Mapping](#252-context-mapping)
    - [2.5.3. Software Architecture](#253-software-architecture)
      - [2.5.3.1. Software Architecture Context Level Diagrams](#2531-software-architecture-context-level-diagrams)
      - [2.5.3.2. Software Architecture Container Level Diagrams](#2532-software-architecture-container-level-diagrams)
      - [2.5.3.3. Software Architecture Deployment Diagrams](#2533-software-architecture-deployment-diagrams)
  - [2.6. Tactical-Level Domain-Driven Design](#26-tactical-level-domain-driven-design)
<!--
- [Capítulo III: Solution UI/UX Design](#capítulo-iii-solution-uiux-design)
  - [3.1. Product design](#31-product-design)
    - [3.1.1. Style Guidelines](#311-style-guidelines)
      - [3.1.1.1. General Style Guidelines](#3111-general-style-guidelines)
    - [3.1.2. Information Architecture](#312-information-architecture)
      - [3.1.2.1. Organization Systems](#3121-organization-systems)
      - [3.1.2.2. Labelling Systems](#3122-labelling-systems)
      - [3.1.2.3. SEO Tags and Meta Tags](#3123-seo-tags-and-meta-tags)
      - [3.1.2.4. Searching Systems](#3124-searching-systems)
      - [3.1.2.5. Navigation Systems](#3125-navigation-systems)
    - [3.1.3. Landing Page UI Design](#313-landing-page-ui-design)
      - [3.1.3.1. Landing Page Wireframe](#3131-landing-page-wireframe)
      - [3.1.3.2. Landing Page Mock-up](#3132-landing-page-mock-up)
    - [3.1.4. Mobile Applications UX/UI Design](#314-mobile-applications-uxui-design)
      - [3.1.4.1. Mobile Applications Wireframes](#3141-mobile-applications-wireframes)
      - [3.1.4.2. Mobile Applications Wireflow Diagrams](#3142-mobile-applications-wireflow-diagrams)
      - [3.1.4.3. Mobile Applications Mock-ups](#3143-mobile-applications-mock-ups)
      - [3.1.4.4. Mobile Applications User Flow Diagrams](#3144-mobile-applications-user-flow-diagrams)
      - [3.1.4.5. Mobile Applications Prototyping](#3145-mobile-applications-prototyping)
- [Capítulo IV: Product Implementation & Validation](#capítulo-iv-product-implementation--validation)
  - [4.1. Software Configuration Management](#41-software-configuration-management)
    - [4.1.1. Software Development Environment Configuration](#411-software-development-environment-configuration)
    - [4.1.2. Source Code Management](#412-source-code-management)
    - [4.1.3. Source Code Style Guide & Conventions](#413-source-code-style-guide--conventions)
    - [4.1.4. Software Deployment Configuration](#414-software-deployment-configuration)
  - [4.2. Landing Page & Mobile Application Implementation](#42-landing-page--mobile-application-implementation)
    - [4.2.1. Sprint 1](#421-sprint-1)
      - [4.2.1.1. Sprint Planning 1](#4211-sprint-planning-1)
      - [4.2.1.2. Aspect Leaders and Collaborators](#4212-aspect-leaders-and-collaborators)
      - [4.2.1.3. Sprint Backlog 1](#4213-sprint-backlog-1)
      - [4.2.1.4. Development Evidence for Sprint Review](#4214-development-evidence-for-sprint-review)
      - [4.2.1.5. Testing Suite Evidence for Sprint Review](#4215-testing-suite-evidence-for-sprint-review)
      - [4.2.1.6. Execution Evidence for Sprint Review](#4216-execution-evidence-for-sprint-review)
      - [4.2.1.7. Services Documentation Evidence for Sprint Review](#4217-services-documentation-evidence-for-sprint-review)
      - [4.2.1.8. Software Deployment Evidence for Sprint Review](#4218-software-deployment-evidence-for-sprint-review)
      - [4.2.1.9. Team Collaboration Insights during Sprint](#4219-team-collaboration-insights-during-sprint)
  - [4.3. Validation Interviews](#43-validation-interviews)
    - [4.3.1. Diseño de Entrevistas](#431-diseño-de-entrevistas)
    - [4.3.2. Registro de Entrevistas](#432-registro-de-entrevistas)
    - [4.3.3. Evaluaciones según heurísticas](#433-evaluaciones-según-heurísticas)
-->
- [Conclusiones](#conclusiones)
<!--
  - [Conclusiones y recomendaciones](#conclusiones-y-recomendaciones)
  - [Video App Validation](#video-app-validation)
  - [Video About the product](#video-about-the-product)
  - [Video About the team](#video-about-the-team) 
- [Glosario](#glosario)-->
- [Bibliografía](#bibliografía)
- [Anexos](#anexos)

---

# Student Outcome

El curso contribuye al cumplimiento del Student Outcome ABET:

**ABET – EAC - Student Outcome 7**

**Criterio:** *La capacidad de adquirir y aplicar nuevos conocimientos según sea necesario, utilizando estrategias de aprendizaje apropiadas.*

En el siguiente cuadro se describe las acciones realizadas y enunciados de conclusiones por parte del grupo, que permiten sustentar el haber alcanzado el logro del ABET – EAC - Student Outcome 7.

<table>
  <tr>
    <th>Criterio específico</th>
    <th>Acciones realizadas</th>
    <th>Conclusiones</th>
  </tr>
  <tr>
    <td><b>Actualiza conceptos y conocimientos necesarios para su desarrollo profesional y en especial para su proyecto en soluciones de software.</b></td>
    <td>
      <b>Cabrera Sotelo, Camila Celeste</b><br>
      <u>AV1</u><br>
      _Pendiente_
      <br><br>
      <b>Dias de la Cruz, Sebastian Gabriel</b><br>
      <u>AV1</u><br>
      _Pendiente_
      <br><br>
      <b>Güere Calero, Fernando Julio</b><br>
      <u>AV1</u><br>
      _Pendiente_
      <br><br>
      <b>Jáuregui Cerna, Jean Franco</b><br>
      <u>AV1</u><br>
      _Pendiente_
      <br><br>
      <b>Limache Coronel, Imanol Fabrizio</b><br>
      <u>AV1</u><br>
      _Pendiente_
    </td>
    <td>
      <u>AV1</u><br>
      _Pendiente_
    </td>
  </tr>
  <tr>
    <td><b>Reconoce la necesidad del aprendizaje permanente para el desempeño profesional y el desarrollo de proyectos en soluciones de software.</b></td>
    <td>
      <b>Cabrera Sotelo, Camila Celeste</b><br>
      <u>AV1</u><br>
      _Pendiente_
      <br><br>
      <b>Dias de la Cruz, Sebastian Gabriel</b><br>
      <u>AV1</u><br>
      _Pendiente_
      <br><br>
      <b>Güere Calero, Fernando Julio</b><br>
      <u>AV1</u><br>
      _Pendiente_
      <br><br>
      <b>Jáuregui Cerna, Jean Franco</b><br>
      <u>AV1</u><br>
      _Pendiente_
      <br><br>
      <b>Limache Coronel, Imanol Fabrizio</b><br>
      <u>AV1</u><br>
      _Pendiente_
    </td>
    <td>
      <u>AV1</u><br>
      _Pendiente_
    </td>
  </tr>
</table>

---

# Objetivos SMART

Cada miembro del equipo formula un plan que incluye al menos dos objetivos SMART, centrados en su desarrollo profesional una vez finalizada su carrera.

### Cabrera Sotelo, Camila Celeste

1. _Pendiente_
2. _Pendiente_

### Dias de la Cruz, Sebastian Gabriel

1. _Pendiente_
2. _Pendiente_

### Güere Calero, Fernando Julio

1. _Pendiente_
2. _Pendiente_

### Jáuregui Cerna, Jean Franco

1. _Pendiente_
2. _Pendiente_

### Limache Coronel, Imanol Fabrizio

1. _Pendiente_
2. _Pendiente_

---

# Capítulo I: Presentación

## 1.1. Startup Profile

### 1.1.1. Descripción de la Startup

CogniTech es una startup tecnológica emergente enfocada en la intersección entre la salud mental y la inteligencia artificial. Nuestro propósito es democratizar el acceso a herramientas de bienestar emocional a través de soluciones de software innovadoras, escalables y centradas en el usuario.

| Atributo | Declaración Estratégica |
| :--- | :--- |
| **Misión** | Empoderar a las personas en la gestión de su bienestar emocional mediante el desarrollo de aplicaciones inteligentes, accesibles y éticas que faciliten la construcción de hábitos saludables y el autoconocimiento. |
| **Visión** | Ser la *startup* líder en la región en la creación de ecosistemas digitales de salud mental, transformando la manera en que la tecnología asiste al ser humano en su desarrollo personal y equilibrio emocional. |

### 1.1.2. Perfiles de integrantes del equipo

_Pendiente_

## 1.2. Solution Profile

### 1.2.1. Antecedentes y problemática

En la actualidad, la salud mental representa uno de los desafíos más críticos para la población joven e interconectada. Las presiones académicas, el entorno laboral competitivo y la constante sobreestimulación digital actúan como detonantes principales del estrés crónico, la ansiedad y el agotamiento (*burnout*). A pesar de la creciente conciencia sobre la importancia del bienestar emocional, el acceso a servicios de atención psicológica tradicionales sigue siendo limitado debido a barreras económicas, falta de tiempo y estigma social.

Si bien existen soluciones de software en el mercado orientadas al bienestar, la mayoría se limitan a ser registros estáticos o listas de tareas básicas que carecen de retroalimentación activa, resultando en altas tasas de abandono. Frente a este escenario, se propone el desarrollo de **MindFlow**, una plataforma inteligente que integra análisis de sentimiento mediante inteligencia artificial para ofrecer apoyo emocional proactivo y seguimiento de hábitos.

Para delimitar y comprender a profundidad el alcance de esta problemática, se emplea el marco de análisis **5W2H**:

* **Who (Quién):** Estudiantes universitarios (18-25 años) y profesionales jóvenes (26-35 años) que enfrentan altos niveles de exigencia académica o laboral, y que son nativos digitales en busca de herramientas de autogestión emocional.
* **What (Qué):** Alta prevalencia de estrés, ansiedad y *burnout*, sumado a la incapacidad de mantener rutinas de bienestar sostenibles y a la alta tasa de abandono de las aplicaciones de salud mental convencionales por su falta de personalización e interactividad.
* **Where (Dónde):** En entornos académicos (universidades, institutos) y espacios laborales (oficinas, esquemas de teletrabajo) a nivel nacional en Perú y la región latinoamericana, donde el ritmo de vida acelerado dificulta la desconexión mental.
* **When (Cuándo):** De manera constante, pero con picos de intensidad durante periodos de evaluaciones universitarias, cierres de proyectos laborales, o momentos de crisis personal donde no se dispone de asistencia psicológica inmediata.
* **Why (Por qué):** Debido a los altos costos económicos de la terapia tradicional, la falta de tiempo para agendar sesiones físicas, el estigma social que aún rodea a la vulnerabilidad emocional, y la carencia de herramientas digitales que ofrezcan empatía y retroalimentación clínica validada en tiempo real.
* **How (Cómo):** El problema se manifiesta a través del agotamiento cognitivo, alteraciones del sueño y baja productividad. Actualmente, los usuarios intentan mitigarlo mediante diarios en papel o aplicaciones genéricas que fallan al no analizar el estado del usuario. Para resolver esto de forma efectiva, la integración de intervenciones digitales impulsadas por Inteligencia Artificial resulta fundamental; según la Organización Mundial de la Salud (OMS), las herramientas de salud digital basadas en algoritmos tienen el potencial de superar barreras históricas de acceso y ofrecer un monitoreo continuo que empodera al paciente en su autocuidado (OMS, 2021, *Global strategy on digital health 2020-2025*).
* **How much (Cuánto):** El costo y el impacto de esta problemática son cuantificables y alarmantes. A nivel global, la depresión y la ansiedad generan la pérdida de 12,000 millones de días de trabajo cada año, costando a la economía mundial cerca de 1 billón de dólares anuales en pérdida de productividad (OMS, 2022, *World mental health report*). En el contexto peruano, el Ministerio de Salud (MINSA) reportó que solo en el año 2023 se atendieron más de 1.3 millones de casos relacionados a trastornos de salud mental, destacando que la ansiedad y la depresión son las principales causas de pérdida de años de vida saludables en la población joven (MINSA, 2023, *Boletín Epidemiológico del Perú*).

### 1.2.2. Lean UX Process

#### 1.2.2.1. Lean UX Problem Statements

El estado actual del mercado de aplicaciones de salud mental y *habit tracking* revela una deficiencia crítica en la interactividad. Las soluciones existentes obligan a los usuarios a realizar el esfuerzo cognitivo de registrar sus emociones en aislamiento, ofreciendo únicamente métricas pasivas sin proporcionar contención ni guía en tiempo real.
A raíz de esta problemática, planteamos los siguiente problem statement:
* **Problem Statement 1 (Enfoque de contención emocional):**
  Hemos observado que los estudiantes universitarios y jóvenes profesionales intentan gestionar su estrés mediante diarios digitales o físicos, pero abandonan estas prácticas rápidamente debido a la falta de retroalimentación inmediata, lo que resulta en frustración y en la persistencia de episodios de ansiedad no tratados. *¿Cómo podríamos proporcionarles una herramienta que procese sus registros emocionales y les ofrezca una respuesta empática y accionable en tiempo real, de modo que perciban un apoyo constante y mejoren su autorregulación?*

* **Problem Statement 2 (Enfoque de adherencia a hábitos):**
  Hemos observado que las aplicaciones tradicionales de seguimiento de hábitos exigen una alta disciplina inicial que los usuarios con altos niveles de estrés (burnout) no logran sostener. *¿Cómo podríamos integrar el análisis del estado de ánimo con el seguimiento de rutinas, de manera que la plataforma ajuste dinámicamente sus recomendaciones diarias para maximizar la retención y la construcción de hábitos a largo plazo?*

#### 1.2.2.2. Lean UX Assumptions

Para fundamentar nuestra experimentación y mitigar riesgos en el desarrollo, hemos completado el **Assumptions Worksheet**, desglosando nuestras suposiciones estratégicas en cuatro dimensiones clave:

**1. Business Outcomes (Resultados de Negocio esperados):**
* Alcanzar una tasa de retención semanal superior al 40% de los usuarios activos durante el primer trimestre de lanzamiento.
* Lograr una tasa de conversión del 5% de usuarios del plan gratuito (*Freemium*) al plan de pago mensual (*Premium*) basado en reportes avanzados.
* Reducir los costos de adquisición de clientes (CAC) apalancándose en la viralidad orgánica dentro de comunidades universitarias y redes profesionales.

**2. User Outcomes (Resultados esperados para el Usuario):**
* **Contención inmediata:** Reducción de la carga mental y el estrés agudo gracias a la validación empática recibida justo en el momento de registrar una emoción negativa.
* **Consistencia:** Mayor adherencia a rutinas de bienestar mediante recomendaciones que se adaptan dinámicamente a la capacidad de energía diaria del usuario, evitando la frustración.
* **Autodescubrimiento:** Empoderamiento del usuario al identificar patrones de comportamiento y detonadores de ansiedad a través de análisis de datos históricos.

**3. Features (Características del Producto a validar):**
* **AI Mood Journal:** Diario interactivo impulsado por Procesamiento de Lenguaje Natural (NLP) que analiza el sentimiento del texto y devuelve respuestas empáticas en tiempo real.
* **Dynamic Habit Tracker:** Gestor de hábitos inteligente que ajusta la dificultad o cantidad de tareas sugeridas basándose en el estado de ánimo detectado por la IA.
* **Smart Interventions:** Sugerencia automatizada de micro-ejercicios (ej. técnica de respiración 4-7-8 o pausas activas) cuando se detectan picos de estrés.
* **Wellness Analytics Dashboard:** Panel de tendencias emocionales con capacidad de exportar reportes clínicos en PDF (Funcionalidad Premium) para ser compartidos con terapeutas.

**4. Business & User Assumptions (Supuestos Críticos):**
* **Supuesto de Valor (Negocio):** Creemos que la ventaja competitiva de MindFlow radica en la analítica de sentimientos, y que los usuarios pagarán por acceder a su historial de datos estructurado.
* **Supuesto de Adopción (Usuario):** Creemos que los jóvenes profesionales y estudiantes preferirán tipear en su móvil antes de dormir, en lugar de usar un cuaderno físico.
* **Supuesto de Confianza (Usuario):** Asumimos que los usuarios están dispuestos a compartir información vulnerable con un motor de IA, siempre y cuando se garantice la encriptación de extremo a extremo y el sistema sea transparente respecto a que no reemplaza a un profesional médico clínico.

#### 1.2.2.3. Lean UX Hypothesis Statements

Para validar nuestros supuestos, planteamos las siguientes hipótesis de diseño, formuladas con métricas de éxito cuantificables bajo la estructura estándar:

* **Hipótesis 1 (Feedback IA y Retención):**
  **Creemos que** implementar un motor de IA que genere respuestas empáticas inmediatas tras cada entrada del diario emocional aumentará significativamente el compromiso continuo del usuario.
  **Sabremos que** tuvimos éxito
  **Cuando veamos** que la tasa de retención semanal supera el 40% y el promedio de uso es mayor a 3 sesiones por semana durante el primer mes de lanzamiento.

* **Hipótesis 2 (Recomendaciones Dinámicas y Estrés):**
  **Creemos que** sugerir micro-ejercicios (como pausas activas o respiración guiada) basados en el análisis de sentimiento del usuario proporcionará herramientas efectivas de mitigación del estrés.
  **Sabremos que** estamos en lo correcto
  **Cuando veamos** que al menos el 50% de los usuarios que reciben una alerta de "alto estrés" hacen clic en la recomendación y la califican positivamente (4 o 5 estrellas de utilidad).

* **Hipótesis 3 (Generación de Ingresos):**
  **Creemos que** ofrecer la exportación de "Reportes de Tendencia Emocional" avanzados como una función de pago validará nuestro modelo de monetización Freemium.
  **Sabremos que** nuestra estrategia de negocio funciona
  **Cuando veamos** una tasa de conversión del 5% de usuarios gratuitos a usuarios *premium* dentro del primer trimestre de operación.

#### 1.2.2.4. Lean UX Canvas

<img src="assets/img/lean_ux/lean_ux_canvas.png" alt="lean_ux_canvas Picture" width="1890"/>

## 1.3. Segmentos objetivo

La identificación de los segmentos objetivo para **MindFlow** se basa en la intersección entre la alta exposición a entornos de estrés crónico y la alta competencia digital. Hemos definido dos segmentos principales que presentan perfiles de necesidad diferenciados, pero que convergen en la búsqueda de soluciones de salud mental accesibles y tecnológicas.

#### 1.3.1. Segmento A: Estudiantes Universitarios (Tech-Native Scholars)
Este segmento comprende jóvenes entre los 18 y 25 años que cursan estudios de pregrado en entornos de alta exigencia académica (universidades e institutos técnicos).

* **Perfil Psicográfico:** Individuos con una alta carga cognitiva diaria, sometidos a periodos críticos de evaluación. Valoran la inmediatez y la gratificación instantánea. Suelen priorizar herramientas gratuitas o de bajo costo debido a su presupuesto limitado.
* **Necesidades Críticas:** Contención rápida durante crisis de ansiedad por exámenes, gestión de la procrastinación y una herramienta que no se sienta como una "tarea extra" en su día a día.
* **Puntos de Dolor:** Sentimiento de aislamiento académico, falta de recursos para costear terapia privada y dificultad para mantener hábitos saludables (sueño, alimentación) bajo presión.

#### 1.3.2. Segmento B: Profesionales Jóvenes (High-Performance Achievers)
Este segmento abarca adultos entre los 26 y 35 años que se encuentran en las primeras etapas de consolidación de su carrera profesional o en roles de mando medio.

* **Perfil Psicográfico:** Personas altamente competitivas que enfrentan el fenómeno del *burnout* laboral. Buscan la optimización del tiempo y valoran los datos (analítica) para medir su progreso personal. Tienen mayor disposición al pago si perciben una mejora directa en su productividad y bienestar.
* **Necesidades Críticas:** Herramientas de desconexión efectiva, monitoreo de la salud mental como preventivo del agotamiento laboral y reportes estructurados que les permitan entender sus detonadores de estrés.
* **Puntos de Dolor:** Desequilibrio entre la vida laboral y personal, estigma en el entorno corporativo sobre la salud mental y falta de tiempo para asistir a sesiones presenciales de psicología.

---

# Capítulo II: Requirements Development and Software Solution Design

## 2.1. Competidores

En el contexto actual del mercado digital de bienestar, existen diversas aplicaciones que abordan la gestión emocional y el desarrollo de hábitos desde distintos enfoques. A continuación, se presentan los principales competidores de MindFlow, considerando su propuesta de valor y alcance funcional:

- Daylio: Aplicación enfocada en el registro diario del estado de ánimo mediante interfaces simples y estadísticas visuales. Su principal fortaleza radica en su facilidad de uso, aunque carece de retroalimentación inteligente o análisis profundo.

- Reflectly: Plataforma de journaling digital que utiliza inteligencia artificial básica para guiar reflexiones personales. Destaca por su experiencia de usuario, pero su nivel de personalización es limitado.

- Habitica: Aplicación de seguimiento de hábitos con un enfoque gamificado que incentiva la constancia mediante recompensas. Sin embargo, no considera el estado emocional del usuario en sus recomendaciones.

Estas soluciones representan enfoques parciales del problema, lo que evidencia una oportunidad para MindFlow de integrar análisis emocional, personalización dinámica y acompañamiento en tiempo real.

### 2.1.1. Análisis competitivo

<table border="1" cellspacing="0" cellpadding="5">
  <tr>
    <th colspan="7">Competitive Analysis Landscape</th>
  </tr>

  <tr>
    <td colspan="2" rowspan="2"><b>¿Por qué llevar a cabo este análisis?</b></td>
    <td colspan="5">
      Identificar las fortalezas, debilidades y oportunidades de las aplicaciones actuales de bienestar digital, con el fin de comprender el posicionamiento de MindFlow dentro del mercado.
    </td>
  </tr>
  <tr>
    <td colspan="5">
      Comparar funcionalidades, estrategias y propuestas de valor para validar el uso de inteligencia artificial como elemento diferenciador en la gestión emocional y de hábitos.
    </td>
  </tr>

   <tr>
    <td colspan="3"></td>
    <td align="center">
      <b>MindFlow</b><br>
      <img src="assets/img/competitive_analysis/MindFlow_icon.png" alt="MindFlow" height="80">
    </td>
    <td align="center">
      <b>Daylio</b><br>
      <img src="assets/img/competitive_analysis/Daylio.png" alt="Daylio" height="80">
    </td>
    <td align="center">
      <b>Reflectly</b><br>
      <img src="assets/img/competitive_analysis/Reflectly.png" alt="Reflectly" height="80">
    </td>
    <td align="center">
      <b>Habitica</b><br>
      <img src="assets/img/competitive_analysis/Habitica.png" alt="Habitica" height="80">
    </td>
  </tr>

  <tr>
    <td rowspan="2"><b>Perfil</b></td>
    <td colspan="2">Overview</td>
    <td>Plataforma de salud mental con IA que integra diario emocional, análisis de sentimiento y hábitos dinámicos.</td>
    <td>Aplicación de registro de emociones con estadísticas simples.</td>
    <td>Diario digital guiado con inteligencia artificial básica.</td>
    <td>Aplicación de hábitos basada en gamificación.</td>
  </tr>

  <tr>
    <td colspan="2">Ventaja competitiva ¿Qué valor ofrece a los clientes?</td>
    <td>Personalización en tiempo real y acompañamiento emocional inteligente basado en IA.</td>
    <td>Facilidad de uso y rapidez en el registro de emociones.</td>
    <td>Experiencia de usuario atractiva enfocada en la reflexión personal.</td>
    <td>Motivación mediante recompensas y mecánicas de juego.</td>
  </tr>

  <tr>
    <td rowspan="2"><b>Perfil de Marketing</b></td>
    <td colspan="2">Mercado objetivo</td>
    <td>Jóvenes (18–35) con estrés académico o laboral.</td>
    <td>Público general.</td>
    <td>Usuarios interesados en journaling y bienestar.</td>
    <td>Personas orientadas a productividad.</td>
  </tr>

  <tr>
    <td colspan="2">Estrategias de marketing</td>
    <td>Modelo freemium, contenido educativo y crecimiento en redes sociales.</td>
    <td>Posicionamiento como app simple y accesible.</td>
    <td>Enfoque en diseño emocional y experiencia visual.</td>
    <td>Gamificación y comunidad activa.</td>
  </tr>

  <tr>
    <td rowspan="3"><b>Perfil de Producto</b></td>
    <td colspan="2">Productos & Servicios</td>
    <td>Diario emocional IA, hábitos adaptativos, intervenciones inteligentes.</td>
    <td>Registro de estado de ánimo.</td>
    <td>Diario guiado.</td>
    <td>Seguimiento de hábitos.</td>
  </tr>

  <tr>
    <td colspan="2">Precios & Costos</td>
    <td>Freemium + funciones premium.</td>
    <td>Freemium.</td>
    <td>Suscripción premium.</td>
    <td>Freemium con compras opcionales.</td>
  </tr>

  <tr>
    <td colspan="2">Canales de distribución (Web y/o Móvil)</td>
    <td>Web y aplicación móvil.</td>
    <td>Aplicación móvil.</td>
    <td>Aplicación móvil.</td>
    <td>Web y aplicación móvil.</td>
  </tr>

  <tr>
    <td rowspan="5"><b>Análisis SWOT</b></td>
  </tr>

  <tr>
    <td colspan="2">Fortalezas</td>
    <td>IA emocional, personalización dinámica, enfoque integral.</td>
    <td>Simplicidad y rapidez.</td>
    <td>Diseño atractivo.</td>
    <td>Gamificación efectiva.</td>
  </tr>

  <tr>
    <td colspan="2">Debilidades</td>
    <td>Dependencia tecnológica, necesidad de generar confianza.</td>
    <td>Sin inteligencia ni personalización.</td>
    <td>IA limitada.</td>
    <td>No aborda salud emocional.</td>
  </tr>

  <tr>
    <td colspan="2">Oportunidades</td>
    <td>Crecimiento del mercado de salud mental digital.</td>
    <td>Usuarios nuevos.</td>
    <td>Expansión del journaling.</td>
    <td>Crecimiento del mercado de productividad.</td>
  </tr>

  <tr>
    <td colspan="2">Amenazas</td>
    <td>Competidores consolidados y preocupaciones por privacidad.</td>
    <td>Apps más avanzadas.</td>
    <td>Competencia con mayor innovación.</td>
    <td>Integración de funciones en apps más completas.</td>
  </tr>

</table>

### 2.1.2. Estrategias y tácticas frente a competidores

_Pendiente_

## 2.2. Entrevistas

### 2.2.1. Diseño de entrevistas

_Pendiente_

### 2.2.2. Registro de entrevistas

_Pendiente_

### 2.2.3. Análisis de entrevistas

_Pendiente_

## 2.3. Needfinding

### 2.3.1. User Personas

_Pendiente_

### 2.3.2. User Task Matrix

_Pendiente_

### 2.3.3. User Journey Mapping

_Pendiente_

### 2.3.4. Empathy Mapping

_Pendiente_

### 2.3.5. Big Picture EventStorming

El equipo realizó una sesión colaborativa de Big Picture EventStorming (aproximadamente 1.5 horas, usando Miro) para construir un entendimiento compartido y de alto nivel del dominio de negocio de MindFlow, antes de tomar cualquier decisión de diseño. El objetivo fue identificar los eventos de negocio significativos a lo largo de todo el panorama del negocio —registro, diario emocional, seguimiento de hábitos, el asistente de IA, reportes, suscripciones y soporte al cliente— sin discutir todavía componentes de software ni Bounded Contexts.

**Paso 1 — Generación de Domain Events**

Cada integrante del equipo escribió de forma independiente los eventos de dominio que identificó en el negocio de MindFlow, en tiempo pasado, sin discutir todavía orden ni relaciones. Este brainstorming sin orden reveló 19 eventos que abarcan todo el producto, desde la creación de la cuenta hasta la cancelación de la suscripción.

<div align="center">

![Big Picture EventStorming - Paso 1: Generación de Domain Events](assets/img/event_storming/BigPicture_Step1.png)
*Figura: Domain Events generados de forma independiente por el equipo.*

</div>

**Paso 2 — Ordenamiento cronológico de los Domain Events**

Luego, el equipo organizó esos mismos eventos a lo largo de una sola línea de tiempo, desde el inicio de la relación del usuario con MindFlow (registro) pasando por el uso continuo (diario, hábitos, reportes) hasta eventos comerciales y de soporte (suscripción, tickets).

<div align="center">

![Big Picture EventStorming - Paso 2: Ordenamiento cronológico](assets/img/event_storming/BigPicture_Step2.png)
*Figura: Domain Events ordenados cronológicamente en el timeline de negocio.*

</div>

**Paso 3 — Agregar Actors y External Systems**

Finalmente, el equipo identificó quién dispara cada evento y qué sistemas externos reales están involucrados en el negocio: el **User** impulsa la mayoría de los eventos directamente, mientras que el **AI Engine**, el **Notification Service** y el **Payment Gateway** aparecen como los sistemas externos de los que ya depende el negocio de MindFlow.

<div align="center">

![Big Picture EventStorming - Paso 3: Actors y External Systems](assets/img/event_storming/BigPicture_Step3.png)
*Figura: Actors y External Systems agregados al timeline de eventos.*

</div>

Este ejercicio confirmó que el negocio de MindFlow abarca áreas de responsabilidad claramente distinguibles —identidad, journaling, insights asistidos por IA, hábitos y bienestar, reportes, notificaciones, facturación y soporte— lo cual se convirtió en el punto de partida para la sesión de EventStorming más detallada descrita en la sección 2.5.1.

### 2.3.6. Ubiquitous Language

_Pendiente_

## 2.4. Requirements Specification

### 2.4.1. User Stories

_Pendiente_

### 2.4.2. Impact Mapping

_Pendiente_

### 2.4.3. Product Backlog

_Pendiente_

## 2.5. Strategic-Level Domain-Driven Design

### 2.5.1. EventStorming

Partiendo del Big Picture explorado en la sección 2.3.5, el equipo realizó una segunda sesión de EventStorming, más enfocada (aproximadamente 2 horas, usando Miro), para alcanzar el nivel de detalle necesario y poder descomponer MindFlow en Bounded Contexts. A diferencia del Big Picture, esta sesión avanzó deliberadamente hacia un pensamiento más cercano al nivel de diseño, introduciendo Commands, Policies y Actors/Agents para cada evento.

**Paso 1 — Events**

El equipo retomó la lista de eventos del Big Picture y la amplió con eventos más granulares por cada área funcional, llegando a 25 eventos de dominio en total —expresados todavía en puro lenguaje de negocio, en tiempo pasado.

<div align="center">

![EventStorming - Paso 1: Events](assets/img/event_storming/EventStorming_Step1.png)
*Figura: Domain Events ampliados con mayor nivel de detalle por área funcional.*

</div>

**Paso 2 — Commands & Policies**

Para cada evento, el equipo identificó qué lo dispara. La mayoría de los eventos son resultado directo de un **Command** —una acción deliberada realizada por un actor (ej. *Write journal entry* → *Journal entry created*). Sin embargo, 7 de los 25 eventos son reacciones automáticas a un evento anterior, en vez de un comando deliberado, y se modelaron como **Policies** ("Cada vez que... entonces..."): *Insight generated*, *Reminder sent*, *Streak achieved*, *Wellness exercise suggested*, *Risk pattern detected*, *Wellness alert sent*, y *Subscription activated*. Tratar estos casos como policies en vez de inventar comandos artificiales mantiene el modelo fiel a cómo realmente se comporta la automatización de MindFlow.

<div align="center">

![EventStorming - Paso 2: Commands y Policies](assets/img/event_storming/EventStorming_Step2.png)
*Figura: Commands y Policies identificados para cada Domain Event.*

</div>

**Paso 3 — Actors / Agents**

El equipo identificó luego quién —o qué— emite cada comando o ejecuta cada policy: el **User** para la mayoría de las acciones directas, el **AI Engine** para la generación de insights, evaluación de riesgo y sugerencias de bienestar, el **System** para policies programadas o basadas en umbrales, el **Payment Gateway** para la confirmación de pagos, y un **Support Agent** para la resolución de tickets. Este paso comenzó a revelar costuras naturales en el dominio —grupos de eventos consistentemente impulsados por el mismo tipo de actor y que operan sobre los mismos datos subyacentes.

<div align="center">

![EventStorming - Paso 3: Actors y Agents](assets/img/event_storming/EventStorming_Step3.png)
*Figura: Actors y Agents identificados para cada Command y Policy.*

</div>

**Paso 4 — Agrupación en Bounded Contexts**

Finalmente, el equipo reagrupó físicamente las mismas notas —ya no siguiendo la línea de tiempo, sino agrupando eventos, commands, policies y actors que comparten fuerte cohesión y un lenguaje de negocio común. Esto produjo 8 clústeres candidatos: **IAM**, **Journal**, **AI Assistant**, **Habits & Wellness**, **Notifications**, **Analytics & Reporting**, **Subscriptions**, y **Support**. Varias policies cruzan visiblemente entre clústeres (por ejemplo, la policy detrás de *Insight generated* depende de un evento que vive dentro de *Journal*, pero la reacción en sí pertenece a *AI Assistant*) —una señal temprana de las relaciones entre contextos que se formalizarán después en la sección 2.5.2 Context Mapping.

<div align="center">

![EventStorming - Paso 4: Agrupación en Bounded Contexts](assets/img/event_storming/EventStorming_Step4.png)
*Figura: Reagrupación final de eventos, commands, policies y actors en los 8 Bounded Contexts candidatos.*

</div>

#### 2.5.1.1. Candidate Context Discovery

Partiendo de la sesión de EventStorming documentada en 2.5.1, el equipo realizó una sesión dedicada de Candidate Context Discovery (aproximadamente 1.5 horas, usando Miro) para formalizar los límites naturales dentro del dominio de MindFlow, comparando el estado del tablero antes del reagrupamiento (Paso 3) contra el estado después del reagrupamiento (Paso 4).

<div align="center">

![Candidate Context Discovery - Tablero antes del reagrupamiento](assets/img/event_storming/EventStorming_Step3.png)
*Figura: Estado del tablero antes del reagrupamiento (Actors/Agents identificados, aún sobre la línea de tiempo).*

![Candidate Context Discovery - Tablero después del reagrupamiento](assets/img/event_storming/EventStorming_Step4.png)
*Figura: Estado del tablero después del reagrupamiento en los 8 Bounded Contexts candidatos.*

</div>

La técnica principal aplicada fue **look-for-pivotal-events**: el equipo recorrió la línea de tiempo producida en el Paso 3 y marcó cada evento que representara un cambio significativo de responsabilidad o capacidad de negocio —un punto donde "empieza a pasar algo distinto." Estos eventos pivote se convirtieron en las costuras a lo largo de las cuales se reagrupó el tablero en el Paso 4.

Se identificaron los siguientes eventos pivote como marcadores de límite:

- **User registered / User authenticated** → marca el inicio de toda relación con el usuario; todo lo que sigue depende de una identidad conocida. Esto ancla el contexto **IAM**, confirmado de forma independiente mediante **start-with-value**, ya que la identidad y el acceso están en la base de toda otra capacidad que ofrece MindFlow.
- **Journal entry created** → marca el cambio de "gestionar una cuenta" a "expresar un estado emocional", una capacidad core distinta con su propio lenguaje (mood, tags, entries). Esto ancla el contexto **Journal**.
- **Assistant query submitted / Insight generated** → marca el cambio de datos crudos de journaling hacia una interpretación generada por IA —una responsabilidad distinta (procesamiento de lenguaje natural, sugerencias contextuales) de simplemente almacenar lo que el usuario escribió. Esto ancla el contexto **AI Assistant**.
- **Habit created** → marca una vía paralela de compromiso del usuario, independiente del journaling: cambio de comportamiento proactivo en vez de expresión reflexiva. Esto ancla **Habits & Wellness**, que también absorbe la capacidad de chequeo de estrés y sugerencias de bienestar, ya que ambas operan sobre el mismo agregado (la rutina de bienestar continua del usuario).
- **Progress report generated** → marca el cambio de "producir datos" (entradas de diario, hábitos completados) a "interpretar datos de forma agregada", una responsabilidad de reporting/analytics distinta de cualquier contexto fuente individual. Esto ancla **Analytics & Reporting**.
- **Premium plan selected / Payment processed** → marca el cambio hacia una relación comercial, gobernada por reglas de facturación ajenas al lenguaje del dominio de bienestar. Esto ancla **Subscriptions**.
- **Support ticket created** → marca el cambio hacia una relación de servicio al cliente, con su propio ciclo de vida (abierto → resuelto) desacoplado del resto del producto. Esto ancla **Support**.
- **Reminder sent / Wellness alert sent** → estos dos eventos no pertenecen a un único contexto upstream; son disparados por policies que se originan en lugares distintos (un horario, un patrón de riesgo) pero comparten la misma responsabilidad —llegar al usuario fuera de la app. Esto ancla **Notifications** como contexto de soporte transversal.

Complementando esto con un pase rápido de **start-with-value** se confirmó que Journal y Habits & Wellness son los contextos que entregan más directamente la propuesta de valor central de MindFlow (autoconciencia emocional y cambio de comportamiento), mientras que IAM, Notifications, Subscriptions y Support se identificaron consistentemente como contextos de soporte/genéricos.

**Tabla: Candidate Bounded Contexts**

| # | Bounded Context | Evento(s) pivote | Capacidad core |
|---|---|---|---|
| 1 | IAM | User registered, User authenticated | Identidad, autenticación, perfil |
| 2 | Journal | Journal entry created | Diario emocional, seguimiento de ánimo |
| 3 | AI Assistant | Assistant query submitted, Insight generated | IA conversacional, insights generados, feedback de respuestas |
| 4 | Habits & Wellness | Habit created, Stress check completed | Seguimiento de hábitos, chequeos de estrés, sugerencias de bienestar |
| 5 | Analytics & Reporting | Progress report generated | KPIs, tendencias, exportaciones |
| 6 | Notifications | Reminder sent, Wellness alert sent | Notificaciones push, recordatorios, alertas |
| 7 | Subscriptions | Premium plan selected, Payment processed | Facturación, planes premium |
| 8 | Support | Support ticket created | Tickets de soporte al cliente |

#### 2.5.1.2. Domain Message Flows Modeling

_Pendiente_

#### 2.5.1.3. Bounded Context Canvases

_Pendiente_

### 2.5.2. Context Mapping

_Pendiente_

### 2.5.3. Software Architecture

#### 2.5.3.1. Software Architecture Context Level Diagrams

_Pendiente_

#### 2.5.3.2. Software Architecture Container Level Diagrams

_Pendiente_

#### 2.5.3.3. Software Architecture Deployment Diagrams

Se elaboró el Deployment Diagram siguiendo el C4 Model, con el objetivo de representar la distribución física de la solución MindFlow: los nodos de hardware e infraestructura sobre los que se despliega cada contenedor de software, así como las relaciones y dependencias entre ellos. 

<div align="center">

![MindFlow Deployment Diagram](assets/img/software_architecture/deployment_diagram.png)
*Figura: Deployment Diagram (C4 Model) de la solución MindFlow en producción.*

</div>

**Explicación del diagrama**

El sistema MindFlow está compuesto por cuatro contenedores (Landing Page, Mobile Application, Web Services API y Database) desplegados sobre nodos físicos y de infraestructura distintos:

- **User's Mobile Device**: dispositivo físico (Android) sobre el que corre la Mobile Application. Se comunica con el backend mediante llamadas HTTPS/JSON autenticadas con JWT.

- **GitHub Pages**: plataforma de hosting de sitios estáticos que aloja el Landing Page (HTML5, CSS3, JavaScript), distribuido a través de su CDN global bajo protocolo HTTPS.

- **Microsoft Azure**: proveedor cloud que aloja toda la infraestructura del backend, compuesto por dos nodos:
  - **Azure App Service**: plataforma PaaS que ejecuta el contenedor Docker de la **Web Services API** (ASP.NET Core / .NET 10), publicado automáticamente desde el repositorio de GitHub.
  - **Azure Database for MySQL**: servicio de base de datos relacional administrado (Flexible Server) que aloja la **Database** (MySQL 8.0), donde se persisten usuarios, entradas de diario, hábitos, conversaciones de chat, suscripciones y tickets de soporte.

- **Servicios externos de terceros** (agrupados como Third-Party Cloud Services), consumidos por la Web Services API mediante llamadas HTTPS/JSON (o SMTP en el caso del correo):
  - **Google Cloud / Firebase**: aloja **Google Gemini API** (generación de insights de IA, respuestas del chat, análisis de sentimiento y sugerencias de hábitos), **Firebase Cloud Messaging** (notificaciones push) y **Google OAuth** (autenticación con Google Sign-In).
  - **Stripe Cloud**: procesa los pagos de las suscripciones premium y envía webhooks de confirmación.
  - **Cloudinary Cloud**: almacena y sirve los archivos multimedia adjuntos a las entradas del diario.
  - **Email Provider**: servidor SMTP utilizado para el envío de correos transaccionales (recuperación de contraseña, confirmación de tickets de soporte).

## 2.6. Tactical-Level Domain-Driven Design

<!-- Se agrega una sub-sección "2.6.x. Bounded Context: <Nombre>" por cada bounded context identificado en 2.5, una vez completado el Strategic-Level DDD. -->

### 2.6.1. Bounded Context: IAM

El bounded context **IAM (Identity & Access Management)** es responsable de la identidad, autenticación y perfil de los usuarios de MindFlow. Ancla el evento *User registered / User authenticated*, y es consumido por el resto de bounded contexts, ya que toda operación sobre Journal, Habits & Wellness, AI Assistant, Analytics, Subscriptions, Notifications y Support requiere un usuario autenticado.

#### 2.6.1.1. Domain Layer

El Domain Layer concentra el agregado raíz `User`, la entidad `PasswordResetToken` y la abstracción `IUserRepository`, que encapsulan las reglas de negocio de identidad (hashing de contraseña y PIN, promoción a administrador, vínculo con Google) independientemente de cómo se exponen o se persisten.

| Clase | Tipo | Propósito | Atributos | Métodos | Relaciones |
|---|---|---|---|---|---|
| `User` | Aggregate Root (implementa `IAuditableEntity`) | Representa la identidad de un usuario de MindFlow y encapsula las reglas de negocio sobre su contraseña, PIN de seguridad y rol. | `Id: int`, `Email: string`, `Name: string?`, `Occupation: string?`, `GoogleId: string?`, `PasswordHash: string` (privado), `PinHash: string?` (privado), `Role: string`, `CreatedAt: DateTimeOffset?`, `UpdatedAt: DateTimeOffset?`, `AdminRole`/`DefaultRole: const string` | `User(email, password)`, `User(email, googleId, name)`, `PromoteToAdmin()`, `LinkGoogle(googleId)`, `UpdatePasswordHash(password)`, `UpdateProfile(name, occupation)`, `SetPin(pin)`, `VerifyPin(pin): bool`, `RemovePin()`, propiedades calculadas `IsAdmin`, `HasPin` | Es el agregado que `IUserRepository` persiste; `PasswordResetToken` referencia su `Id` (relación lógica, sin FK físico) |
| `PasswordResetToken` | Entity | Representa un token de un solo uso, con expiración, para el flujo de recuperación de contraseña. Solo se persiste el hash del token; el valor crudo viaja únicamente en el correo enviado al usuario. | `Id: int`, `UserId: int`, `Token: string` (hash SHA-256), `ExpiresAt: DateTime`, `Used: bool` | *(entidad anémica, sin comportamiento propio — el ciclo de vida lo gestiona `UserCommandService`)* | Referencia lógica a `User` por `UserId` (0..* a 1, sin constraint físico en BD) |
| `IUserRepository` | Repository Interface (extiende `IBaseRepository<User>`) | Abstrae el acceso a datos de `User` para que el Domain/Application Layer no dependa de la tecnología de persistencia. | — | `FindByEmailAsync(email): Task<User?>`, `FindByGoogleIdAsync(googleId): Task<User?>`, `ExistsByEmailAsync(email): Task<bool>` + heredados de `IBaseRepository<User>` (`AddAsync`, `FindByIdAsync`, `Update`, `Remove`, `ListAsync`) | Implementada por `UserRepository` (Infrastructure Layer); consumida por `UserCommandService` (Application Layer) |

#### 2.6.1.2. Interface Layer

El Interface Layer expone las capacidades de IAM como una API REST, y traduce entre el contrato HTTP (Resources) y los Commands del Application Layer.

| Clase | Tipo | Propósito | Atributos / Métodos | Relaciones |
|---|---|---|---|---|
| `UsersController` | REST Controller (`api/v1/users`) | Expone los endpoints de registro, autenticación (email/password y Google), recuperación de contraseña, perfil y gestión de PIN. | Endpoints: `POST /sign-up`, `POST /sign-in`, `POST /google-auth`, `POST /forgot-password`, `POST /reset-password`, `GET /profile`, `PUT /profile`, `DELETE /`, `POST /pin`, `POST /pin/verify`, `DELETE /pin`, `GET /pin/status` | Depende de `IUserCommandService`; usa los *Assemblers* para transformar Resources ↔ Commands/Entities |
| `SignUpResource`, `SignInResource`, `GoogleAuthResource`, `ForgotPasswordResource`, `ResetPasswordResource`, `UpdateProfileResource`, `SetPinResource`, `VerifyPinResource` | Request DTOs (records) | Representan el cuerpo (`body`) de cada petición HTTP entrante, desacoplado de los Commands del dominio. | Atributos según el endpoint (p. ej. `SignUpResource(Email, Password, Name?)`) | Transformados a Commands por los Assemblers o instanciados directamente en el Controller |
| `UserResource`, `AuthenticatedUserResource` | Response DTOs (records) | Representan la forma pública de un `User` en las respuestas HTTP; `AuthenticatedUserResource` añade el JWT emitido. | `UserResource(Id, Email, Name?, Occupation?)`, `AuthenticatedUserResource(Id, Email, Token)` | Construidos a partir de `User` mediante `UserResourceFromEntityAssembler` |
| `SignUpCommandFromResourceAssembler` | Assembler (static) | Convierte un `SignUpResource` en un `SignUpCommand`. | `ToCommandFromResource(resource): SignUpCommand` | Traduce Interface Layer → Application Layer |
| `UserResourceFromEntityAssembler` | Assembler (static) | Convierte un `User` (Domain) en un `UserResource` (Interface). | `ToResourceFromEntity(entity): UserResource` | Traduce Domain Layer → Interface Layer |

#### 2.6.1.3. Application Layer

El Application Layer orquesta los flujos de negocio de IAM a través de Commands y del servicio `UserCommandService`, que actúa como Command Handler unificado para todos los casos de uso de identidad.

| Clase | Tipo | Propósito | Atributos / Métodos | Relaciones |
|---|---|---|---|---|
| `SignUpCommand`, `SignInCommand`, `UpdateProfileCommand`, `DeleteAccountCommand`, `GoogleAuthCommand`, `ForgotPasswordCommand`, `ResetPasswordCommand`, `SetPinCommand`, `VerifyPinCommand`, `RemovePinCommand` | Commands (records) | Encapsulan la intención y los datos necesarios para cada caso de uso de IAM (registro, login, actualización de perfil, eliminación de cuenta, login con Google, recuperación/reset de contraseña, gestión de PIN). | P. ej. `SignUpCommand(Email, Password, Name?)`, `SignInCommand(Email, Password)`, `SetPinCommand(UserId, Pin)` | Producidos por el Interface Layer (directamente o vía Assembler); consumidos por `IUserCommandService` |
| `IUserCommandService` | Application Service Interface | Define el contrato de todos los casos de uso de IAM como métodos `Handle(...)` sobrecargados por tipo de Command. | Un `Handle(TCommand)` por cada Command, más `HasPinAsync(userId)` y `GetProfileAsync(userId)` | Implementada por `UserCommandService`; consumida por `UsersController` |
| `UserCommandService` | Application Service (Command Handler) | Implementa `IUserCommandService`: valida entradas (formato de email, longitud de contraseña/PIN), aplica reglas de negocio sobre `User`, coordina `IUserRepository`, `ITokenService`, `IEmailService`, `IGoogleAuthService` y el `IUnitOfWork`. En `DeleteAccountCommand` además orquesta el borrado en cascada de datos del usuario en los demás bounded contexts (Journal, Habits, Analytics, Chat, Support, Subscriptions, Notifications, AiFeedback) dentro de una transacción. | Un método `Handle` por cada Command (ver tabla de Commands) | Depende de `IUserRepository`, `IUnitOfWork`, `ITokenService`, `IEmailService`, `IGoogleAuthService`, `AppDbContext` (acceso directo para el borrado en cascada multi-contexto) |
| `ITokenService` | Service Port | Abstrae la generación de tokens de acceso. | `GenerateToken(user: User): string` | Implementada por `TokenService` (Infrastructure) |
| `IEmailService` | Service Port | Abstrae el envío de correos transaccionales. | `SendPasswordResetAsync(toEmail, resetToken): Task` | Implementada por `EmailService` (Infrastructure) |
| `IGoogleAuthService` | Service Port | Abstrae la validación de credenciales de Google Sign-In. | `ValidateAsync(credential): Task<GoogleUserInfo?>` | Implementada por `GoogleAuthService` (Infrastructure); retorna el record `GoogleUserInfo(GoogleId, Email, Name?)` |
| `SignUpError`, `SignInError` | Error Enums | Códigos de error tipados para las respuestas `Result<T>.Failure(...)` de sign-up y sign-in/reset. | `SignUpError`: `EmailAlreadyInUse`, `InvalidEmailFormat`, `UnexpectedError`. `SignInError`: `InvalidCredentials`, `UnexpectedError` | Usados por `UserCommandService` al construir resultados fallidos |

#### 2.6.1.4. Infrastructure Layer

El Infrastructure Layer contiene las implementaciones concretas de los puertos definidos en Domain/Application Layer: persistencia con EF Core, emisión de JWT, envío de correo por SMTP, y validación de credenciales de Google.

| Clase | Tipo | Propósito | Atributos / Métodos | Relaciones |
|---|---|---|---|---|
| `UserRepository` | Repository (EF Core) | Implementa `IUserRepository` sobre `AppDbContext`, extendiendo `BaseRepository<User>` para el CRUD genérico. | `FindByEmailAsync(email)`, `FindByGoogleIdAsync(googleId)`, `ExistsByEmailAsync(email)` | Implementa `IUserRepository`; hereda de `BaseRepository<User>`; opera sobre la tabla `users` vía `AppDbContext` |
| `TokenService` | Infrastructure Service | Implementa `ITokenService` generando un JWT firmado con HMAC-SHA256, con claims `user_id`, `email` y `role`, expiración de 7 días. | `GenerateToken(user): string` | Implementa `ITokenService`; lee `TokenSettings:Secret`, `Jwt:Issuer`, `Jwt:Audience` de configuración |
| `EmailService` | Infrastructure Service | Implementa `IEmailService` enviando el correo de recuperación de contraseña vía SMTP (`System.Net.Mail`), con el enlace hacia `FrontendUrl` configurado. | `SendPasswordResetAsync(toEmail, resetToken): Task` | Implementa `IEmailService`; depende del servicio externo **SMTP Email Service** |
| `GoogleAuthService` | Infrastructure Service | Implementa `IGoogleAuthService` validando el `credential` (ID token) recibido contra la librería oficial `Google.Apis.Auth`, verificando el `Audience` contra `Google:ClientId`. | `ValidateAsync(credential): Task<GoogleUserInfo?>` | Implementa `IGoogleAuthService`; depende del servicio externo **Google OAuth** |

---

#### 2.6.1.5. Bounded Context Software Architecture Component Level Diagrams

<div align="center">

![IAM Component Diagram](assets/img/software_architecture/iam_component_diagram.png)
*Figura: Component Diagram (C4 Model) del bounded context IAM dentro del container Web Services API.*

</div>

El diagrama descompone el container **Web Services API** en los componentes que implementan IAM: `UsersController` recibe las peticiones HTTP y delega en `UserCommandService`, que a su vez coordina `UserRepository` (persistencia), `TokenService` (emisión de JWT), `EmailService` (correo de recuperación vía SMTP) y `GoogleAuthService` (validación de credenciales contra Google OAuth). Cada componente de infraestructura encapsula la comunicación con su dependencia externa correspondiente, de modo que `UserCommandService` permanece desacoplado de los detalles técnicos (hashing JWT, protocolo SMTP, SDK de Google).

#### 2.6.1.6. Bounded Context Software Architecture Code Level Diagrams

##### 2.6.1.6.1. Bounded Context Domain Layer Class Diagrams

<div align="center">

![IAM Domain Layer Class Diagram](assets/img/software_architecture/iam_class_diagram.png)
*Figura: Class Diagram (UML) del Domain Layer del bounded context IAM.*

</div>

El diagrama muestra el agregado `User` (que implementa `IAuditableEntity`), la entidad `PasswordResetToken` y la interfaz `IUserRepository` (que extiende `IBaseRepository`).

##### 2.6.1.6.2. Bounded Context Database Design Diagram

<div align="center">

![IAM Database Diagram](assets/img/software_architecture/iam_database_diagram.png)

*Figura: Database Diagram del bounded context IAM.*

</div>

El bounded context IAM persiste en dos tablas: `users` (con índices únicos sobre `email` y `google_id`) y `password_reset_tokens` (con índice único sobre `token` y un índice simple sobre `user_id`).

---

### 2.6.2. Bounded Context: Journal

El bounded context **Journal** es responsable del diario emocional: creación, edición, borrado (soft-delete), etiquetado, adjuntos multimedia y búsqueda de entradas. Ancla el evento pivote *Journal entry created* identificado en el EventStorming (sección 2.5.1.1), y es uno de los dos contexts core que entregan directamente la propuesta de valor de MindFlow (autoconciencia emocional), junto con Habits & Wellness.

A diferencia de IAM, Journal **no define un repository interface propio**: los Command Handlers usan directamente `IBaseRepository<TEntity>` (abstracción genérica del Shared Kernel) para `JournalEntry`, `EntryTag` y `Media`, mientras que los Query Handlers acceden directamente a `AppDbContext` para construir lecturas optimizadas con `Include`/joins — un patrón CQRS explícito: comandos vía repository + Unit of Work, queries de solo lectura sin pasar por el repository. Tampoco existe una capa de Resources/Assemblers como en IAM: el `JournalController` consume los DTOs del Application Layer directamente como contrato de entrada/salida.

#### 2.6.2.1. Domain Layer

| Clase | Tipo | Propósito | Atributos | Métodos | Relaciones |
|---|---|---|---|---|---|
| `JournalEntry` | Aggregate Root (implementa `IAuditableEntity`) | Representa una entrada del diario emocional del usuario, con soporte de sincronización offline-first y soft-delete. `Content` se persiste **cifrado en reposo** (AES, `EncryptedStringConverter`) y la entidad tiene un query filter global (`DeletedAt == null`). | `Id: int`, `UserId: int`, `ClientId: string?` (correlación offline-first), `Date: DateOnly`, `Title: string`, `Content: string`, `Sentiment: string`, `Category: string`, `HasPreview: bool`, `AiResponse: string?`, `CreatedAt/UpdatedAt/DeletedAt: DateTimeOffset?` | *(entidad anémica — el comportamiento vive en los Command Handlers)* | Raíz del agregado: `1` a `0..*` con `EntryTag` (colección `EntryTags`) y con `Media` (colección `Media`); referenciada por `JournalSearchToken` (FK enforced, sin navegación inversa) |
| `Tag` | Entity | Representa una etiqueta que el usuario puede asociar a sus entradas. `UserId` nulo indica una etiqueta global/del sistema. | `Id: int`, `UserId: int?`, `Name: string` | *(anémica)* | `1` a `0..*` con `EntryTag` (colección `EntryTags`) |
| `EntryTag` | Entity (tabla de asociación) | Representa la asociación many-to-many entre `JournalEntry` y `Tag`. | `Id: int`, `EntryId: int`, `TagId: int` | *(anémica)* | `0..*` a `1` con `JournalEntry` (navegación `Entry`, FK enforced, cascade) y con `Tag` (navegación `Tag`, FK enforced, cascade); único por `(EntryId, TagId)` |
| `Media` | Entity (implementa `IAuditableEntity`) | Representa un archivo multimedia (imagen, audio, video, documento) adjunto a una entrada. | `Id: int`, `EntryId: int`, `Type: string`, `Url: string`, `CreatedAt/UpdatedAt: DateTimeOffset?` | *(anémica)* | `0..*` a `1` con `JournalEntry` (navegación `Entry`, FK enforced, cascade) |
| `JournalSearchToken` | Entity | Representa el hash HMAC de una palabra normalizada extraída de una entrada, usado como índice de búsqueda ciego: el `WHERE` corre sobre el hash, así las entradas que no calzan nunca se desencriptan. | `Id: int`, `EntryId: int`, `UserId: int`, `TokenHash: string` | *(anémica)* | `0..*` a `1` con `JournalEntry` (navegación `Entry`, FK enforced, cascade — sin colección inversa en `JournalEntry`) |
| `JournalError` | Domain Error Enum | Códigos de error de dominio para resultados fallidos. | — | `JournalEntryNotFound`, `EntryTagNotFound` | Usado por los Handlers al construir `Result.Failure(...)` |
| `JournalSearchTokenizer` | Domain Service (estático) | Normaliza texto libre en un conjunto de palabras indexables: minúsculas, sin tildes, separadas por límites no alfanuméricos, deduplicadas. Se usa idénticamente al indexar una entrada y al parsear una query de búsqueda, para que ambos lados hasheen igual. | — | `{static} Tokenize(text: string?): IReadOnlySet<string>` | Consumida por `JournalSearchIndexer` (Infrastructure) y por `GetJournalEntriesHandler` (Application) |

#### 2.6.2.2. Interface Layer

| Clase | Tipo | Propósito | Endpoints / Métodos | Relaciones |
|---|---|---|---|---|
| `JournalController` | REST Controller (`/journal`) | Expone las 12 operaciones REST de Journal: entradas, tags, entry-tags y media (incluyendo upload de archivos). Resuelve el `user_id` del JWT y valida ownership antes de delegar en el Application Layer. | `GET/POST /entries`, `GET/PUT/DELETE /entries/{id}`, `POST /entries/sync`, `GET /tags`, `GET/POST /entry-tags`, `DELETE /entry-tags/{id}`, `GET/POST /media`, `POST /media/upload` | Depende de `IMediator` (Cortex.Mediator) para despachar Commands/Queries, de `IFileStorageService` para subir archivos, y de `AppDbContext` (acceso puntual en `DeleteEntryTag` para resolver el `EntryId` antes de validar ownership) |

#### 2.6.2.3. Application Layer

| Clase | Tipo | Propósito | Atributos / Métodos | Relaciones |
|---|---|---|---|---|
| `CreateJournalEntryCommand`, `UpdateJournalEntryCommand`, `DeleteJournalEntryCommand`, `CreateEntryTagCommand`, `DeleteEntryTagCommand`, `CreateMediaCommand`, `SyncJournalEntriesCommand` | Commands | Encapsulan la intención de cada caso de uso de escritura de Journal. `SyncJournalEntriesCommand` agrupa una lista de `SyncJournalEntryItemRequest` para reconciliar ediciones offline. | P. ej. `CreateJournalEntryCommand{UserId, Date, Title, Content, Sentiment, Category}` | Despachadas por `JournalController` vía `IMediator.SendAsync` |
| `GetJournalEntriesQuery`, `GetJournalEntryByIdQuery`, `GetTagsQuery`, `GetEntryTagsQuery`, `GetMediaQuery` | Queries | Encapsulan cada caso de uso de lectura, con soporte de filtros (`_sort`, `_order`, `_limit`, `q` para búsqueda en `GetJournalEntriesQuery`). | P. ej. `GetJournalEntriesQuery{UserId, Sort?, Order?, Limit?, Q?}` | Despachadas por `JournalController` vía `IMediator.QueryAsync` |
| `CreateJournalEntryHandler`, `UpdateJournalEntryHandler`, `DeleteJournalEntryHandler`, `CreateEntryTagHandler`, `DeleteEntryTagHandler`, `CreateMediaHandler`, `SyncJournalEntriesHandler` | Command Handlers (`ICommandHandler<TCommand, Result<T>>`) | Implementan las reglas de negocio de escritura: detección automática de sentimiento (si no se especifica o es `"auto"`, analiza palabras clave positivas/negativas), soft-delete, y en `SyncJournalEntriesHandler`, reconciliación *last-write-wins* de un lote de ediciones offline contra el estado del servidor (ver `US54`). | Un método `Handle` por Command | Dependen de `IBaseRepository<TEntity>` + `IUnitOfWork` (persistencia), `IAnalyticsCacheInvalidator` (**dependencia cruzada hacia el bounded context Analytics & Reporting** — invalida la caché de analíticas del usuario tras cada cambio) y `IJournalSearchIndexer` (reindexado tras crear/actualizar) |
| `GetJournalEntriesHandler`, `GetJournalEntryByIdHandler`, `GetTagsHandler`, `GetEntryTagsHandler`, `GetMediaHandler` | Query Handlers (`IQueryHandler<TQuery, Result<T>>`) | Implementan las lecturas optimizadas directamente sobre `AppDbContext` (con `AsNoTracking()`, `Include` para tags/media, filtros y orden). `GetJournalEntriesHandler` además resuelve la búsqueda por texto (`q`) tokenizando la query con `JournalSearchTokenizer` y comparando hashes vía `ISearchTokenHasher` contra `JournalSearchToken`, sin desencriptar entradas que no calzan. | Un método `Handle` por Query | Dependen de `AppDbContext` directamente (sin pasar por `IBaseRepository`) y, en el caso de `GetJournalEntriesHandler`, de `ISearchTokenHasher` |
| `JournalEntryDto`, `TagDto`, `EntryTagDto`, `MediaDto` | Response DTOs | Representan la forma pública de cada entidad para las respuestas de la API. | P. ej. `JournalEntryDto{Id, UserId, Date, Title, Content, Sentiment, Category, HasPreview, AiResponse, Tags, Media, CreatedAt, UpdatedAt, DeletedAt}` | Construidos por los Handlers a partir de las entidades de dominio |
| `CreateJournalEntryRequest`, `UpdateJournalEntryRequest` | Request DTOs | Representan el cuerpo de las peticiones HTTP de creación/actualización, consumidos directamente por `JournalController` (sin Assembler intermedio). | `CreateJournalEntryRequest{UserId, Date, Title, Content, Sentiment, Category}`, `UpdateJournalEntryRequest{Title, Content, Sentiment, Category}` | El Controller los transforma manualmente en el Command correspondiente |
| `SyncJournalEntryItemRequest`, `SyncJournalEntryResultDto` | Sync DTOs | Representan, respectivamente, una entrada editada offline enviada en un lote de sincronización, y el resultado de reconciliarla (`created`/`updated`/`deleted`/`conflict_kept_server`). | `SyncJournalEntryItemRequest{ClientId, Date, Title, Content, Sentiment, Category, ClientUpdatedAt, Deleted}`, `SyncJournalEntryResultDto{ClientId, Action, Entry?}` | Usados por `SyncJournalEntriesCommand`/`SyncJournalEntriesHandler` |
| `IFileStorageService` | Service Port | Abstrae el almacenamiento de archivos multimedia, desacoplando al Controller de la tecnología de almacenamiento concreta. | `SaveAsync(file: IFormFile, userId: int): Task<(string Url, string Type)>` | Implementada por `CloudinaryFileStorageService` y `LocalFileStorageService` (Infrastructure) |
| `IJournalSearchIndexer` | Service Port | Abstrae la (re)indexación de una entrada en tokens de búsqueda. | `IndexAsync(entry: JournalEntry, ct): Task` | Implementada por `JournalSearchIndexer` (Infrastructure); invocada por los Command Handlers tras crear/actualizar |
| `ISearchTokenHasher` | Service Port | Abstrae el hashing determinístico de un token de búsqueda. | `Hash(token: string): string` | Implementada por `SearchTokenHasher` (Infrastructure); consumida por `GetJournalEntriesHandler` y `JournalSearchIndexer` |

#### 2.6.2.4. Infrastructure Layer

| Clase | Tipo | Propósito | Atributos / Métodos | Relaciones |
|---|---|---|---|---|
| `CloudinaryFileStorageService` | Infrastructure Service | Implementa `IFileStorageService` subiendo el archivo a Cloudinary (imagen/video/raw según extensión), validando extensiones permitidas (`.jpg`, `.png`, `.mp3`, `.mp4`, `.pdf`, etc.). | `SaveAsync(file, userId): Task<(Url, Type)>` | Implementa `IFileStorageService`; depende del servicio externo **Cloudinary** |
| `LocalFileStorageService` | Infrastructure Service | Implementa `IFileStorageService` guardando el archivo en `wwwroot/uploads/{userId}/` del servidor y construyendo la URL pública a partir del request HTTP actual. Actúa como alternativa a Cloudinary (p. ej. entornos sin credenciales configuradas). | `SaveAsync(file, userId): Task<(Url, Type)>` | Implementa `IFileStorageService`; depende de `IWebHostEnvironment` e `IHttpContextAccessor` |
| `SearchTokenHasher` | Infrastructure Service | Implementa `ISearchTokenHasher` con HMAC-SHA256 keyed hashing (clave de 256 bits en Base64), evitando que un atacante con acceso a la BD recupere palabras comunes vía diccionario precomputado. | `Hash(token): string`, `{static} GenerateKey(): string` | Implementa `ISearchTokenHasher` |
| `JournalSearchIndexer` | Infrastructure Service | Implementa `IJournalSearchIndexer`: borra los tokens previos de la entrada, tokeniza título+contenido con `JournalSearchTokenizer` y guarda los nuevos `JournalSearchToken` vía `AppDbContext`. | `IndexAsync(entry, ct): Task` | Implementa `IJournalSearchIndexer`; depende de `AppDbContext` y `ISearchTokenHasher` |
| `JournalSearchBackfillService` | Background Service (`BackgroundService`) | Job de arranque, idempotente y no bloqueante, que indexa retroactivamente las entradas creadas antes de que existiera la búsqueda (US53), sin demorar el health check de despliegue. | `ExecuteAsync(stoppingToken): Task` (override) | Depende de `AppDbContext` e `IJournalSearchIndexer`, resueltos vía `IServiceScopeFactory` |

---

#### 2.6.2.5. Bounded Context Software Architecture Component Level Diagrams

<div align="center">

![Journal Component Diagram](assets/img/software_architecture/journal_component_diagram.png)
*Figura: Component Diagram (C4 Model) del bounded context Journal dentro del container Web Services API.*

</div>

El diagrama refleja la separación CQRS: `JournalController` despacha hacia dos grupos de componentes vía `IMediator` — los **Journal Command Handlers** (escritura, vía `IBaseRepository<T>` + Unit of Work) y los **Journal Query Handlers** (lectura, directo contra la base de datos con joins). Los Command Handlers disparan además el reindexado de búsqueda (`JournalSearchIndexer`) y la invalidación de caché de Analytics — esta última cruzando el límite del bounded context. La subida de archivos pasa por `FileStorageService`, que abstrae Cloudinary (producción) de un fallback local.

#### 2.6.2.6. Bounded Context Software Architecture Code Level Diagrams

##### 2.6.2.6.1. Bounded Context Domain Layer Class Diagrams

<div align="center">

![Journal Domain Layer Class Diagram](assets/img/software_architecture/journal_class_diagram.png)
*Figura: Class Diagram (UML) del Domain Layer del bounded context Journal.*

</div>

`JournalEntry` es el agregado raíz, con colecciones navegables hacia `EntryTag` y `Media` (ambas con Foreign Key enforced y `DeleteBehavior.Cascade`). `EntryTag` es la tabla de asociación many-to-many hacia `Tag`. `JournalSearchToken` referencia a `JournalEntry` con FK enforced pero **sin colección inversa navegable** desde el agregado (se consulta directamente vía `AppDbContext.Set<JournalSearchToken>()`). `JournalSearchTokenizer` es un Domain Service estático sin estado.

##### 2.6.2.6.2. Bounded Context Database Design Diagram

<div align="center">

![Journal Database Diagram](assets/img/software_architecture/journal_database_diagram.png)
*Figura: Database Diagram del bounded context Journal.*

</div>

Las tablas `entry_tags`, `media` y `journal_search_tokens` tienen **Foreign Key física enforced** hacia `journal_entries.id`, todas con `ON DELETE CASCADE`. `entry_tags` además tiene FK enforced hacia `tags.id` y un índice único compuesto `(entry_id, tag_id)` que impide duplicar la misma etiqueta en la misma entrada. La columna `tags.user_id` **no tiene Foreign Key declarada** hacia `users.id` (relación lógica, nullable — permite tags globales del sistema cuando es `NULL`). `journal_entries.content` se almacena cifrado en reposo (AES) a nivel de aplicación, transparente para el esquema de base de datos.

---

<!--
# Capítulo III: Solution UI/UX Design

## 3.1. Product design

### 3.1.1. Style Guidelines

#### 3.1.1.1. General Style Guidelines

_Pendiente_

### 3.1.2. Information Architecture

#### 3.1.2.1. Organization Systems

_Pendiente_

#### 3.1.2.2. Labelling Systems

_Pendiente_

#### 3.1.2.3. SEO Tags and Meta Tags

_Pendiente_

#### 3.1.2.4. Searching Systems

_Pendiente_

#### 3.1.2.5. Navigation Systems

_Pendiente_

### 3.1.3. Landing Page UI Design

#### 3.1.3.1. Landing Page Wireframe

_Pendiente_

#### 3.1.3.2. Landing Page Mock-up

_Pendiente_

### 3.1.4. Mobile Applications UX/UI Design

#### 3.1.4.1. Mobile Applications Wireframes

_Pendiente_

#### 3.1.4.2. Mobile Applications Wireflow Diagrams

_Pendiente_

#### 3.1.4.3. Mobile Applications Mock-ups

_Pendiente_

#### 3.1.4.4. Mobile Applications User Flow Diagrams

_Pendiente_

#### 3.1.4.5. Mobile Applications Prototyping

_Pendiente_

---

# Capítulo IV: Product Implementation & Validation

## 4.1. Software Configuration Management

### 4.1.1. Software Development Environment Configuration

_Pendiente_

### 4.1.2. Source Code Management

_Pendiente_

### 4.1.3. Source Code Style Guide & Conventions

_Pendiente_

### 4.1.4. Software Deployment Configuration

_Pendiente_

## 4.2. Landing Page & Mobile Application Implementation

### 4.2.1. Sprint 1

#### 4.2.1.1. Sprint Planning 1

_Pendiente_

#### 4.2.1.2. Aspect Leaders and Collaborators

_Pendiente_

#### 4.2.1.3. Sprint Backlog 1

_Pendiente_

#### 4.2.1.4. Development Evidence for Sprint Review

_Pendiente_

#### 4.2.1.5. Testing Suite Evidence for Sprint Review

_Pendiente_

#### 4.2.1.6. Execution Evidence for Sprint Review

_Pendiente_

#### 4.2.1.7. Services Documentation Evidence for Sprint Review

_Pendiente_

#### 4.2.1.8. Software Deployment Evidence for Sprint Review

_Pendiente_

#### 4.2.1.9. Team Collaboration Insights during Sprint

_Pendiente_

## 4.3. Validation Interviews

### 4.3.1. Diseño de Entrevistas

_Pendiente_

### 4.3.2. Registro de Entrevistas

_Pendiente_

### 4.3.3. Evaluaciones según heurísticas

_Pendiente_

---
-->

# Conclusiones

## Conclusiones y recomendaciones

_Pendiente_

## Video App Validation

_Pendiente_

## Video About the product

_Pendiente_

## Video About the team

_Pendiente_

---

<!--# Glosario

_Pendiente_ -->

---

# Bibliografía

_Pendiente_

---

# Anexos

_Pendiente_
