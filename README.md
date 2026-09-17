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

### 2.1.1. Análisis competitivo

_Pendiente_

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

_Pendiente_

## 2.6. Tactical-Level Domain-Driven Design

<!-- Se agrega una sub-sección "2.6.x. Bounded Context: <Nombre>" por cada bounded context identificado en 2.5, una vez completado el Strategic-Level DDD. -->

_Pendiente_

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
