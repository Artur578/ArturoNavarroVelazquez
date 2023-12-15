# Arturo Navarro Velazquez

## Chatbot sobre la enfermad fibrosis quistica y harrt Potter


#### funciones iniciales, mensaje de bienvenida
eliza:-	
    writeln('Hola, mi nombre es Eliza, tu chatbot.'),
    writeln('Tengo información sobre la enfermedad fibrosis quistica y el mundo de Harry Potter.'),
    writeln('Por favor ingresa tu consulta, usar solo minúsculas sin . al final:'),
    readln(Input),
    eliza(Input), !.

eliza(Input):- Input == ['Adios'],
    writeln('Adios. Espero haber podido ayudarte.'), !.

eliza(Input) :-
    template(Stim, Resp, IndStim),
    match(Stim, Input),
    replace0(IndStim, Input, 0, Resp, R),
    writeln(R),
    readln(Input1),
    eliza(Input1), !.

% --- Plantillas de ejemplo ---

#### Saludos y preguntas basicas
template([hola, mi, nombre, es, s(_)], ['Hola', 0, 'Como', estas, tu, '?'], [4]).
template([como, estas, tu, '?'], [yo, estoy, bien, ',', gracias, por, preguntar, '.'], []).

template([quien, fundo, s(_)], [flagFounder], [2]).

#### Estructura de como recibira la pregunta, aqui se estructura para preguntar informacion sobre cualquier casa
template([dime, algo, sobre, s(_)], [aboutHouse], [3]).


#### Estructura de como recibira la pregunta, aqui se estructura para preguntar por el patronus de cualquier personaje
template([cual, es, el, patronus, de, s(_)], [characterPatronus], [5]).


#### Estructura de como recibira la pregunta, aqui se estructura para preguntar sobre cual es la casa de cualquier personaje
template([en, que, casa, estaba, s(_)], [hogwartsHouse], [4]).
template([que, casa, de, hogwarts, es, conocida, por, s(_)], [hogwartsHouseTraits], [7]).

#### Estructura de como recibira la pregunta, aqui se estructura para preguntar sobre cualquier personaje
template([quien, es, s(_)], [characterDescription], [2]).
template([en, que, libro, aparece, s(_)], [characterFirstAppearance], [4]).

#### Estructura de como recibira la pregunta, aqui se estructura para preguntar sobre cualquier lugar
template([donde, se, encuentra, s(_)], [placeLocation], [3]).
template([que, es, s(_)], [placeDescription], [2]).

#### Estructura de como recibira la pregunta, aqui se estructura para preguntar sobre cualquier hechizo
template([como, se, realiza, el, hechizo, s(_)], [spellExecution], [5]).
template([que, hace, el, hechizo, s(_)], [spellEffect], [4]).

#### Estructura de como recibira la pregunta, aqui se estructura para preguntar sobre cualquier artefacto 
template([para, que, sirve, el, s(_)], [artifactUse], [3]).
template([para, que, sirve, la, s(_)], [artifactUse], [3]).
template([para, que, sirve, s(_)], [artifactUse], [3]).
template([quien, creo, s(_)], [artifactCreator], [2]).

#### Estructura de como recibira la pregunta, aqui se estructura para preguntar sobre cualquier creatura
template([que, es, un, s(_)], [creatureDescription], [3]).
template([donde, vive, un, s(_)], [creatureHabitat], [3]).

#### Estructura de como recibira la pregunta, aqui se estructura para preguntar sobre cualquier evento
template([que, ocurrio, en, s(_)], [eventDetails], [3]).
template([cuando, es, el, s(torneo_de_los_tres_magos)], [eventDate], [3]).

#### Estructura de como recibira la pregunta, aqui se estructura para preguntar info de cualquier materia
template([que, se, estudia, en, s(_)], [hogwartsSubject], [4]).
template([quien, ensena, s(_)], [hogwartsProfessor], [2]).

### Preguntas sobre la enfermedad 


#### preguntas sobre un sintoma
template([s(_), es, un, sintoma ], [flagSint], [0]).
template([el, s(_), es, un, sintoma ], [flagSint], [1]).
template([la, s(_), es, un, sintoma ], [flagSint], [1]).
template([las, s(_), es, un, sintoma ], [flagSint], [1]).
template([los, s(_), es, un, sintoma ], [flagSint], [1]).
template([tengo, s(_), es, malo], [flagSint], [1]).
template([tengo, s(_), es, un, sintoma ], [flagSint], [1]).

#### preguntas de 2 sintomas
template([tengo, s(_), y, s(_), puede, ser, fibrosis, quistica ], [flagSint1], [1, 3]).
template([los, sintomas, s(_), y, s(_), son, de, la, fibrosis, quistica ], [flagSint1], [2, 4]).
template([s(_), y, s(_), son, sintomas ], [flagSint1], [0, 2]).
template([s(_), y, s(_), son, sintomas, de, la, fibrosis, quistica], [flagSint1], [0, 2]).


#### preguntas de 3 sintomas
template([tengo, s(_), s(_), y, s(_), puede, ser, fibrosis, quistica], [flagSint2], [1, 2, 4]).
template([los, sintomas, s(_), s(_), y, s(_), son, de, la, fibrosis, quistica], [flagSint2], [2, 3, 5]).
template([s(_), s(_), y, s(_), son, sintomas ], [flagSint2], [0, 1, 3]).
template([s(_), s(_), y, s(_), son, sintomas, de, la, fibrosis, quistica], [flagSint2], [0, 1, 3]).

#### Funciones de respuestas ---

#### preguntas sobre la fibrosis quistica
template([que, es, la, fibrosis, quistica ], ["La fibrosis quistica (FQ) es una enfermedad genetica cronica y progresiva que afecta principalmente a los pulmones y el sistema digestivo."], []).


template([como, puedo, prevenir, la, fibrosis, quistica ], ["Como en la mayoria de las enfermedades la deteccion temprana es clave para un mejor manejo de la enfermedad por lo que hacer analisis constantes es la mejor manera y con mayor razon si vienes de una familia con antecedentes"], []).


template([cual, es, la, causa ], ["La FQ es causada por mutaciones en el gen CFTR, que afecta la forma en que el cloruro (un componente de la sal) se transporta dentro y fuera de las células. Esto lleva a la producción de moco, sudor y jugos digestivos anormalmente espesos."], []).


template([como, se, diagnostica ], ["Se puede diagnosticar mediante pruebas genéticas, pruebas de sudor (para medir el nivel de sal en el sudor) y pruebas de función pulmonar."], []).


template([como, se, trata, la, fibrosis, quistica ], ["el tratamiento se enfoca en manejar los síntomas y reducir las complicaciones."], []).


template([se, cura, la, fibrosis, quistica ], ["No se cura pero se puede controlar"], []).


template([existen, medicamentos, para, la, fibrosis, quistica ], ["Si existen multiples medicamentos entre los cuales se encuentra Moduladores, Agentes Mucolicos, Antibioticos, Antiinflamatorios, Enzimas Pancreaticas"], []).


template([para, que, sirven, los, medicamentos, s(_)], [medicationFor], [5]).




#### Respuestas sobre las casas de Hogwarts, aqui se espera una variable unica al coincidir la pregunta con la estructura definida se activa el template y busca la respuesta aqui en base a esa variable unica
hogwartsHouse(harry, R) :- R = ['Harry Potter estaba en Gryffindor'].
hogwartsHouse(hermione, R) :- R = ['Hermione Granger estaba en Gryffindor'].
hogwartsHouse(nevile_longbottom, R) :- R = ['Nevile Longbottom estaba en Gryffindor'].
hogwartsHouse(james_potter, R) :- R = ['James Potter estaba en Gryffindor'].
hogwartsHouse(dumbledore, R) :- R = ['Albus Dumbledore estaba en Gryffindor'].
hogwartsHouse(ron, R) :- R = ['Ron weasley estaba en Gryffindor '].
hogwartsHouse(cedric, R) :- R = ['Cedric estaba en Hufflepuff'].
hogwartsHouse(pomona, R) :- R = ['Pomona estaba en Hufflepuff'].
hogwartsHouse(cho_chang, R) :- R = ['Cho Chang estaba en Ravenclaw'].
hogwartsHouse(luna, R) :- R = ['Luna Lovegood estaba en Ravenclaw'].
hogwartsHouse(severus_snape, R) :- R = ['Severus Snape estaba en Slytherin'].
hogwartsHouse(draco_malfoy, R) :- R = ['Draco Malfoy estaba en Slytherin'].
hogwartsHouse(lucius_malfoy, R) :- R = ['Lucius Malfoy estaba en Slytherin'].
hogwartsHouse(bellatrix, R) :- R = ['Bellatrix estaba en Slytherin'].
hogwartsHouse(lord_voldemort, R) :- R = ['Lord Voldemort estaba en Slytherin'].


hogwartsHouseTraits(valor, R) :- R = ['Gryffindor es conocida por el valor y la valentia'].
hogwartsHouseTraits(astucia, R) :- R = ['Slytherin es conocida por la astucia y la ambicion'].
hogwartsHouseTraits(lealtad, R) :- R = ['Hufflepuff es conocida por la lealtad y la paciencia'].
hogwartsHouseTraits(sabiduria, R) :- R = ['Ravenclaw es conocida por la sabiduria y la creatividad'].


#### Respuestas sobre hechizos
spellExecution(expelliarmus, R) :- R = ['Para realizar Expelliarmus, debes agitar tu varita y decir "Ex-pel-lee-AR-mus'].
spellExecution(lumos, R) :- R = ['Para realizar Lumos, debes agitar tu varita y decir "LOO-mos"'].
spellExecution(accio, R) :- R = ['Para realizar Accio, debes agitar tu varita y decir "A-kee-o."'].
spellExecution(expecto_patronum, R) :- R = ['Para realizar Expecto Patronum, debes agitar tu varita, pensar en algo que te produzca gran felicidad, no tener miedo y decir "Ex-PEK-toh pa-TRO-num"'].
spellExecution(wingardium_leviosa, R) :- R = ['Para realizar Wingardium Leviosa, debes agitar tu varita y decir "Win-GAR-dee-um leh-vee-OH-sa."'].
spellExecution(protego, R) :- R = ['Para realizar protego, debes agitar tu varita y decir "Pro-TEH-go."'].
spellExecution(expulso, R) :- R = ['Para realizar Expulso, debes agitar tu varita y decir " Ex-PUHL-so.'].

spellEffect(leviosa, R) :- R = ['El hechizo Wingardium Leviosa hace que los objetos leviten'].
spellEffect(expelliarmus, R) :- R = ['El hechizo Expelliarmus desarma al oponente, haciendolo soltar lo que tenga en las manos.  '].
spellEffect(accio, R) :- R = ['El hechizo Accio Atrae objetos hacia el conjurador, como una especie de "llámame".'].
spellEffect(expecto_patronum, R) :- R = ['El hechizo Expecto Patronum Invoca un Patronus, una criatura protectora, para repeler a los Dementores. '].
spellEffect(protego, R) :- R = ['El hechizo Protego Crea un escudo mágico para proteger al conjurador de hechizos y ataques'].
spellEffect(lumos, R) :- R = ['El hechizo Lumos  Ilumina la punta de la varita, creando una fuente de luz.'].

spellEffect(expulso, R) :- R = ['El hechizo expulso Hace explotar objetos o crea una explosión mágica. '].



#### Respuestas sobre personajes
characterDescription(dumbledore, R) :- R = ['El director de Hogwarts, un poderoso mago y líder en la lucha contra Voldemort. Es mentor y guia de Harry.'].
characterDescription(harry, R) :- R = [' El protagonista de la serie, un mago famoso por sobrevivir al hechizo de la muerte cuando era un bebe'].
characterDescription(hermione, R) :- R = [' La mejor amiga de Harry y Ron, conocida por su inteligencia y habilidades magicas. Es una estudiante excepcional en Hogwarts.'].
characterDescription(ron, R) :- R = [' Otro de los mejores amigos de Harry, miembro de la familia Weasley y compañero de clase en Hogwarts.'].
characterDescription(voldemort, R) :- R = [' El principal antagonista de la serie, un mago oscuro obsesionado con la sangre pura y la conquista del mundo mágico.'].
characterDescription(lord_voldemort, R) :- R = [' El principal antagonista de la serie, un mago oscuro obsesionado con la sangre pura y la conquista del mundo mágico.'].
characterDescription(snape, R) :- R = [' Profesor de Pociones en Hogwarts y un personaje complejo con una conexión intrigante con Harry y Voldemort.'].
characterDescription(severus_snape, R) :- R = [' Profesor de Pociones en Hogwarts y un personaje complejo con una conexion intrigante con Harry y Voldemort.'].
characterDescription(ginny, R) :- R = [' La hermana menor de Ron y amiga de Harry. Mas tarde se convierte en pareja de Harry y es una jugadora talentosa de Quidditch.'].
characterDescription(sirius_black, R) :- R = [' El padrino de Harry y miembro de la familia Black. Escapa de Azkaban y desempeña un papel importante en la serie.'].
characterDescription(remus_lupin, R) :- R = [' Profesor de Defensa Contra las Artes Oscuras y amigo de los padres de Harry. '].
characterDescription(dobby, R) :- R = [' Un elfo domestico que inicialmente sirve a la familia Malfoy. Desempeña un papel crucial en la lucha contra Voldemort.'].
characterDescription(draco_malfoy, R) :- R = [' Un estudiante de Slytherin y rival de Harry en Hogwarts. Su familia tiene vínculos con Voldemort.'].
characterDescription(minerva_mcgonagall, R) :- R = [' La estricta pero justa profesora de Transformaciones en Hogwarts, y más tarde directora de la escuela.'].
characterDescription(hagrid, R) :- R = [' El guardian de las llaves y de las criaturas magicas en Hogwarts. Es un amigo cercano de Harry, Ron y Hermione.'].
characterDescription(neville_longbottom, R) :- R = [' Inicialmente un estudiante torpe de Gryffindor, Neville se convierte en un valiente miembro de la resistencia contra Voldemort.'].
characterDescription(bellatrix, R) :- R = [' Una seguidora fanatica de Voldemort, conocida por su crueldad y lealtad extrema al Señor Oscuro.'].
characterDescription(lucius_malfoy, R) :- R = [' El padre de Draco Malfoy, un miembro influyente de la familia Malfoy y seguidor de Voldemort.'].
characterDescription(cedric, R) :- R = [' Un estudiante de Hufflepuff y competidor en el Torneo de los Tres Magos. Juega un papel crucial en el cuarto libro.'].
characterDescription(dolores_umbridge, R) :- R = [' Una profesora de Hogwarts y funcionaria del Ministerio de Magia. Es conocida por su actitud autoritaria y despiadada.'].
characterFirstAppearance(mirta, R) :- R = ['Un fantasma que habita en los baños de Hogwarts. Juega un papel importante en la trama del segundo libro.'].


#### Respuestas sobre lugares
placeLocation(hogsmeade, R) :- R = ['esta ubicado en las cercanias de Hogwarts, la escuela de magia y hechiceria.'].
placeLocation(hogwarts, R) :- R = ['La escuela de magia y hechicería donde Harry y sus amigos estudian. Está ubicada en algun lugar de Escocia, oculta a los ojos de los no magicos por hechizos protectores.'].
placeLocation(callejon_diagon, R) :- R = ['es un lugar magico oculto en el corazon de Londres, Reino Unido.'].
placeLocation(callejon_knockturn, R) :- R = [' Ubicada en el mismo corazón de Londres, no muy lejos del Callejón Diagon'].
placeLocation(la_madriguera, R) :- R = ['La casa de la familia Weasley, situada en Ottery St. Catchpole, Devon.'].
placeLocation(azkaban, R) :- R = [' está ubicada en una isla remota en el Mar del Norte. La isla es inhóspita y el entorno que la rodea es desolado'].
placeDescription(azkaban, R) :- R = ['Azkaban es conocida por ser el lugar donde los magos y brujas condenados, especialmente aquellos que han practicado magia oscura, son encarcelados. La prisión está protegida por fuertes encantamientos y criaturas magicas para evitar que los prisioneros escapen.'].
placeDescription(hogsmeade, R) :- R = ['Hogsmeade es el unico pueblo completamente magico en Gran Bretaña y desempeña un papel especial en la serie de Harry Potter. '].
placeDescription(hogwarts, R) :- R = ['Hogwarts es la principal escuela de magia y hechicería en el mundo de Harry Potter.'].
placeDescription(callejon_diagon, R) :- R = ['El Callejón Diagon es un lugar mágico crucial en el mundo de Harry Potter. La entrada al Callejón Diagon está disfrazada. Para llegar allí, los visitantes mágicos deben atravesar la pared trasera del pub "El Caldero Chorreante" en la plaza.'].
placeDescription(callejon_knockturn, R) :- R = ['el Callejón Knockturn es conocido por ser un lugar sombrío y peligroso. Es frecuentado por brujas y magos que se dedican a prácticas mágicas oscuras y a la venta de objetos y artefactos mágicos tenebrosos.'].
placeDescription(la_madriguera, R) :- R = ['La Madriguera es la pintoresca y caótica casa de la familia Weasley, Es descrita como una casa inclinada y torcida con varias torres y extensiones añadidas a lo largo de los años.'].
placeDescription(el_bosque_prohibido, R) :- R = [' El bosque alberga una variedad de criaturas mágicas peligrosas, algunas de las cuales son prohibidas estudiar o interactuar. Esto incluye acromántulas (arañas gigantes), centauros, thestrals y hipogrifos.'].



#### Respuestas sobre artefactos magicos
artifactUse(deluminador, R) :- R = ['El Deluminador es un dispositivo mágico que puede absorber y luego liberar la luz de fuentes cercanas, apagando o encendiendo luces. También puede guiar a una persona de regreso a una ubicación específica donde el Deluminador fue programado para encontrarla.'].
artifactUse(capa_de_invisibilidad, R) :- R = ['La Capa de Invisibilidad es una capa mágica que puede hacer invisible a quien la lleva.'].
artifactUse(varita_de_sauco, R) :- R = ['La Varita de Sauco es una de las tres Reliquias de la Muerte y es considerada una de las varitas más poderosas jamas creadas. Otorga gran poder a su poseedor.'].
artifactUse(piedra_de_la_resurreccion, R) :- R = ['La Piedra de la Resurreccion es otra de las Reliquias de la Muerte. Supuestamente puede resucitar a los muertos.'].
artifactUse(mapa_del_merodeador, R) :- R = ['Un mapa mágico que muestra la ubicación exacta de todas las personas en Hogwarts, así como los pasadizos secretos y salas secretas.'].
artifactUse(espejo_oesed, R) :- R = ['Un espejo mágico que muestra el deseo más profundo del corazón de quien lo mira.'].
artifactUse(sombrero_seleccionador, R) :- R = ['Selecciona la casa a la que pertenecerá cada estudiante en Hogwarts.'].
artifactUse(cronosfera, R) :- R = ['Un amuleto que permite al usuario viajar en el tiempo.'].
artifactCreator(giratiempo, R) :- R = ['fue creado por un mago llamado Saul Croaker. Saul Croaker '].
artifactCreator(sombrero_seleccionador, R) :- R = ['Los cuatro fundadores de Hogwarts: Godric Gryffindor, Helga Hufflepuff, Rowena Ravenclaw y Salazar Slytherin. Se dice que fue conjurado por las cuatro mentes más brillantes de la época.'].
artifactCreator(mapa_del_merodeador, R) :- R = ['James Potter, Sirius Black, Remus Lupin y Peter Pettigrew. Crearon el mapa durante sus años en Hogwarts para ayudar en sus travesuras.'].
artifactCreator(deluminador, R) :- R = ['Albus Dumbledore. Dumbledore deja el Deluminador a Ron Weasley en su testamento.'].
artifactCreator(varita_de_sauco, R) :- R = ['fue creada por la Muerte misma, según la leyenda de las Reliquias de la Muerte.'].
artifactCreator(piedra_de_la_resurreccion, R) :- R = ['la Piedra de la Resurrección es parte de la leyenda de las Reliquias de la Muerte y se asocia con la Muerte misma.'].

#### Respuestas sobre criaturas
creatureDescription(hipogrifo, R) :- R = ['Una criatura con la parte delantera de un águila y la parte trasera de un caballo. Son criaturas majestuosas y orgullosas.'].
creatureDescription(basilisco, R) :- R = ['Una serpiente gigante y venenosa, llamada "El Rey de las Serpientes". Tiene la capacidad de matar con una mirada directa a los ojos.'].
creatureDescription(elstrig, R) :- R = ['Una criatura que se alimenta de sangre. Tiene la apariencia de un murciélago de gran tamaño con colmillos afilados.'].
creatureDescription(acromantula, R) :- R = ['Una araña gigante con ocho patas. Es conocida por ser peligrosa y caníbal.'].
creatureDescription(thestral, R) :- R = ['Una criatura alada con una apariencia esquelética. Solo es visible para aquellos que han experimentado la muerte.'].
creatureDescription(dragon, R) :- R = ['Criaturas mágicas gigantes con alas y capacidad para lanzar fuego. Hay varias especies, como el Dragón Colacuerno Húngaro y el Dragón Ucraniano de Cuernos Largos.'].
creatureDescription(unicornio, R) :- R = ['Los unicornios son seres mágicos con la apariencia de caballos blancos, generalmente con crines y colas plateadas. La característica más distintiva de los unicornios es el cuerno largo y espiral que tienen en la frente.'].
creatureHabitat(acromantula, R) :- R = ['Bosques oscuros y selvas. La Aragog, una acromántula, vivió en el Bosque Prohibido de Hogwarts.'].

creatureHabitat(hipogrifo, R) :- R = [' Los hipogrifos prefieren hábitats montañosos y bosques, y pueden ser encontrados en lugares como la Reserva de Criaturas Mágicas de Hogwarts.'].
creatureHabitat(basilisco, R) :- R = ['La Cámara Secreta en Hogwarts. Se mueve a través de las tuberías del castillo.'].
creatureHabitat(elstrig, R) :- R = ['Bosques oscuros y áreas remotas. A veces se encuentran en el Bosque Prohibido de Hogwarts.'].
creatureHabitat(thestral, R) :- R = ['Bosques y áreas remotas. Thestrals son vistos por Harry Potter y otros personajes en los terrenos de Hogwarts.'].
creatureHabitat(dragon, R) :- R = ['En su mayoría, viven en regiones remotas y protegidas. '].
creatureHabitat(unicornio, R) :- R = ['Los unicornios prefieren hábitats pacíficos y hermosos, como bosques frondosos y claros arbolados. Son criaturas típicamente asociadas con lugares tranquilos y encantadores.'].

eventDetails(batalla_de_hogwarts, R) :- R = ['La Batalla de Hogwarts fue un conflicto decisivo que ...'].
eventDetails(torneo_de_los_tres_magos, R) :- R = ['Harry es inesperadamente seleccionado como uno de los campeones en el Torneo de los Tres Magos en "Harry Potter y el Cáliz de Fuego". La competición lleva a enfrentamientos peligrosos y, finalmente, al regreso de Lord Voldemort.'].
eventDetails(camara_secreta, R) :- R = ['La Cámara Secreta es abierta en "Harry Potter y la Cámara Secreta", liberando a un basilisco que amenaza a los estudiantes de Hogwarts. Harry descubre que es Parsel, el lenguaje de las serpientes, y enfrenta a Tom Riddle.'].
eventDetails(juicio_de_harry, R) :- R = ['Harry es llevado a juicio en "Harry Potter y la Orden del Fénix" por usar magia fuera de Hogwarts. Durante la audiencia, se revela el renacimiento de Lord Voldemort y la creciente amenaza.'].
eventDetails(bosque_prohibido, R) :- R = ['Harry, Ron, Hermione y Draco son castigados y enviados al Bosque Prohibido durante su primer año en "Harry Potter y la Piedra Filosofal". Encuentran a Lord Voldemort, quien estaba intentando obtener el Sorbete de la Muerte.'].
eventDate(torneo_de_los_tres_magos, R) :- R = ['El Torneo de los Tres Magos tuvo lugar en ...'].
eventDate(batalla_de_hogwarts, R) :- R = ['El clímax de la batalla tiene lugar el 2 de mayo.'].
eventDate(cumpleanos_de_harry, R) :- R = ['El cumpleaños de Harry Potter es el 31 de julio'].
eventDate(cumpleanos_de_hermione, R) :- R = ['El cumpleaños de Hermione Granger es el 19 de septiembre.'].
eventDate(torneo_de_duelo, R) :- R = ['En "Harry Potter y el Prisionero de Azkaban", se celebra un Torneo de Duelo en el que los estudiantes compiten en duelos mágicos.'].




#### Respuestas sobre aspectos de la vida en Hogwarts
hogwartsSubject(defensa_contra_las_artes_oscuras, R) :-
    R = ['los estudiantes de Hogwarts estudian una variedad de temas relacionados con la protección y la lucha contra las artes oscuras y las criaturas mágicas peligrosas.'].

	hogwartsSubject(pociones, R) :-
    R = ['En Pociones, los estudiantes aprenden a preparar y mezclar ingredientes mágicos para crear brebajes con diversos efectos, desde curativos hasta poções venenosas.'].

hogwartsSubject(encantamientos, R) :-
    R = ['En Encantamientos, los estudiantes aprenden a realizar hechizos y a encantar objetos para que realicen funciones mágicas específicas.'].	

	hogwartsSubject(transformaciones, R) :-
    R = ['En Transformaciones, los estudiantes aprenden a cambiar la forma y la apariencia de objetos y criaturas, transformándolos en algo diferente.'].	

	hogwartsSubject(herbologia, R) :-
    R = ['En Herbología, los estudiantes estudian plantas mágicas y aprenden a cuidar, recolectar y utilizar sus propiedades mágicas.'].	

	hogwartsSubject(astronomia, R) :-
    R = ['En Astronomia, los estudiantes estudian el cielo nocturno, las estrellas y los planetas, y también realizan observaciones astronómicas.'].	

	hogwartsSubject(adivinacion, R) :-
    R = ['En Adivinación, los estudiantes practican metodos de adivinación como la bola de cristal, la lectura de las hojas de té y la interpretación de sueños.'].	

hogwartsProfessor(pociones, R) :-
    R = ['La asignatura de Pociones es enseñada por Severus Snape (Año 1 al Año 5, y luego nuevamente en Año 6 y 7)
Horace Slughorn (Año 6)
Severus Snape (Año 7)  '].

	hogwartsProfessor(encantamientos, R) :-
    R = ['La asignatura de Encantamientos es enseñada por  Filius Flitwick  '].

	hogwartsProfessor(transformaciones, R) :-
    R = ['La asignatura de transformaciones es enseñada por  Minerva McGonagall '].

	hogwartsProfessor(herbologia, R) :-
    R = ['La asignatura de Herbologia es enseñada por Pomona Sprout  '].

	hogwartsProfessor(astronomia, R) :-
    R = ['La asignatura de Astronomia es enseñada por Aurora Sinistra  '].

	hogwartsProfessor(adivinacion, R) :-
    R = ['La Adivinacion de Pociones es enseñada por Sybill Trelawney '].

	

	




#### Respuestas sobre las casas
aboutHouse(gryffindor, R) :- 
    R = ['Gryffindor es conocida por valorar la amistad y la lealtad. La casa tiene una tradición de producir valientes luchadores contra las fuerzas oscuras.'].
aboutHouse(hufflepuff, R) :- 
    R = ['Hufflepuff valora la igualdad y la justicia. Es conocida por aceptar a los estudiantes por su valía personal, independientemente de sus habilidades mágicas o linaje.'].
aboutHouse(slytherin, R) :- 
    R = ['Slytherin es conocida por producir magos y brujas con fuertes instintos de supervivencia. La casa valora la ambición y está dispuesta a hacer lo necesario para alcanzar el éxito.'].

aboutHouse(ravenclaw, R) :- 
    R = ['Ravenclaw celebra el amor por el aprendizaje y la búsqueda del conocimiento. La casa es hogar de algunos de los estudiantes más intelectuales y curiosos de Hogwarts.'].




	
#### Respuestas sobre el Patronus de personajes específicos
characterPatronus(harry, R) :- 
    R = ['El patronus de Harry es un ciervo'].
characterPatronus(hermione, R) :- 
    R = ['El patronus de Hermione es una nutria'].

	characterPatronus(ron, R) :- 
    R = ['El patronus de Ron es El Jack Russell Terrier'].

	characterPatronus(ginny, R) :- 
    R = ['El Patronus de Ginny, un caballo'].

	characterPatronus(snape, R) :- 
    R = ['El Patronus de Snape, una cierva'].

	characterPatronus(dolores_umbridge, R) :- 
    R = ['El patronus de Dolores es un Gato Persa.'].

	characterPatronus(sirius_blac, R) :- 
    R = ['El Patronus de Sirius es un perro'].

	characterPatronus(dumbledore, R) :- 
    R = ['El Patronus de Dumbledore es el Fenix'].
	


elizaFounder('hogwarts', R):- R = ['Hogwarts fue fundada por Godric Gryffindor, Helga Hufflepuff, Rowena Ravenclaw, y Salazar Slytherin.'].
elizaFounder(X, R):- R = ['No tengo información sobre el fundador de', X].

#### Base de datos de medicamentos
medication(antiinflamatorios, 'Reducen la inflamación en los pulmones.
Los corticosteroides inhalados y el ibuprofeno a altas dosis son ejemplos comunes.').

medication(moduladores, ' medicamentos que tratan la causa subyacente de la FQ al mejorar la función de la proteína CFTR defectuosa.').

medication(agentes_mucolicos, ' medicamentos ayudan a diluir y descomponer el moco espeso para facilitar su expulsión.
Ejemplos incluyen la Dornasa alfa (Pulmozyme) y soluciones salinas hipertónicas.').

medication(antibioticos, ' medicamentos son Utilizados para tratar y prevenir infecciones pulmonares.
Pueden administrarse por vía oral, intravenosa o inhalada.
Los antibióticos comunes incluyen Tobramicina, Azitromicina y Ciprofloxacino.').

medication(enzimas_pancreaticas, 'Suplementan las enzimas que el páncreas no puede producir.
Ayudan en la digestión y absorción de nutrientes.
Ejemplos incluyen Pancrelipasa.').


#### Función de respuesta para 'medicationFor'
medicationFor(Medication, R) :-
    medication(Medication, Description),
    R = ['Los ', Medication, ' son ', Description].
medicationFor(Medication, R) :-
    \+ medication(Medication, _),
    R = ['No tengo información sobre medicamentos para ', Medication, '.'].






handleFlag(flagFounder, Atom, R):- elizaFounder(Atom, R).

#### sintomas FQ: flagSint
sintomaFQ(X, R):- sint0(X), R = ['Ese SI es un sintoma de la Fibrosis quistica'].
sintomaFQ(X, R):- \+sint0(X), R = ['Ese NO es un sintoma de la Fibrosis quistica'].
sint0(tos_cronica).
sint0(bronquitis).
sint0(neumonia).
sint0(dificultad_de_respirar).
sint0(sinusitis_cronica).
sint0(dificultad_para_ganar_peso).
sint0(heces_voluminosas).
sint0(insuficiencia_pancreatica).
sint0(diabetes).
sint0(sudaracion_excesiva).

sint0(problemas_de_fertilidad).

#### sintomas FQ1: flagSint1
sintomaFQ1(X, Y, R):- sint1(X, Y), R = ['con esos 2 sintomas Si es probable que sea Fibrosis Quistica'].
sintomaFQ1(X, Y, R):- \+sint1(X, Y), R = ['con esos 2 sintomas NO es probable que sea Fibrosis Quistica'].
sint1(tos_cronica, bronquitis).
sint1(tos_cronica, neumonia).
sint1(tos_cronica, dificultad_de_respirar).
sint1(tos_cronica, sinusitis_cronica).
sint1(tos_cronica, dificultad_para_ganar_peso).
sint1(tos_cronica, heces_voluminosas).
sint1(tos_cronica, insuficiencia_pancreatica).
sint1(tos_cronica, diabetes).
sint1(tos_cronica, sudoracion_excesiva).
sint1(bronquitis, neumonia).
sint1(bronquitis, dificultad_de_respirar).
sint1(bronquitis, sinusitis_cronica).
sint1(bronquitis, dificultad_para_ganar_peso).
sint1(bronquitis, heces_voluminosas).
sint1(bronquitis, insuficiencia_pancreatica).
sint1(bronquitis, diabetes).
sint1(bronquitis, sudoracion_excesiva).
sint1(neumonia, dificultad_de_respirar).
sint1(neumonia, sinusitis_cronica).
sint1(neumonia, dificultad_para_ganar_peso).
sint1(neumonia, heces_voluminosas).
sint1(neumonia, insuficiencia_pancreatica).
sint1(neumonia, diabetes).
sint1(neumonia, sudoracion_excesiva).
sint1(dificultad_de_respirar, sinusitis_cronica).
sint1(dificultad_de_respirar, dificultad_para_ganar_peso).
sint1(dificultad_de_respirar, heces_voluminosas).
sint1(dificultad_de_respirar, insuficiencia_pancreatica).
sint1(dificultad_de_respirar, diabetes).
sint1(dificultad_de_respirar, sudoracion_excesiva).
sint1(sinusitis_cronica, dificultad_para_ganar_peso).
sint1(sinusitis_cronica, heces_voluminosas).
sint1(sinusitis_cronica, insuficiencia_pancreatica).
sint1(sinusitis_cronica, diabetes).
sint1(sinusitis_cronica, sudoracion_excesiva).
sint1(dificultad_para_ganar_peso, heces_voluminosas).
sint1(dificultad_para_ganar_peso, insuficiencia_pancreatica).
sint1(dificultad_para_ganar_peso, diabetes).
sint1(dificultad_para_ganar_peso, sudoracion_excesiva).
sint1(heces_voluminosas, insuficiencia_pancreatica).
sint1(heces_voluminosas, diabetes).
sint1(heces_voluminosas, sudoracion_excesiva).
sint1(insuficiencia_pancreatica, diabetes).
sint1(insuficiencia_pancreatica, sudoracion_excesiva).
sint1(diabetes, sudoracion_excesiva).



#### sintomas FQ2 flagSint2
sintomaFQ2(X, Y, Z, R):- sint2(X, Y, Z), R = ['con estos 3 sintomas es MUY PROBABLE que sea Fibrosis quistica'].
sintomaFQ2(X, Y, Z, R):- \+sint2(X, Y, Z), R = ['con estos 3 sintomas es MUY PROBABLE QUE NO sea Fibrosis quistica'].
sint2(tos_cronica, bronquitis, neumonia).
sint2(tos_cronica, bronquitis, dificultad_de_respirar).
sint2(tos_cronica, bronquitis, sinusitis_cronica).
sint2(tos_cronica, bronquitis, dificultad_para_ganar_peso).
sint2(tos_cronica, bronquitis, heces_voluminosas).
sint2(tos_cronica, bronquitis, insuficiencia_pancreatica).
sint2(tos_cronica, bronquitis, diabetes).
sint2(tos_cronica, bronquitis, sudoracion_excesiva).
sint2(tos_cronica, neumonia, dificultad_de_respirar).
sint2(tos_cronica, neumonia, sinusitis_cronica).
sint2(tos_cronica, neumonia, dificultad_para_ganar_peso).
sint2(tos_cronica, neumonia, heces_voluminosas).
sint2(tos_cronica, neumonia, insuficiencia_pancreatica).
sint2(tos_cronica, neumonia, diabetes).
sint2(tos_cronica, neumonia, sudoracion_excesiva).
sint2(tos_cronica, dificultad_de_respirar, sinusitis_cronica).
sint2(tos_cronica, dificultad_de_respirar, dificultad_para_ganar_peso).
sint2(tos_cronica, dificultad_de_respirar, heces_voluminosas).
sint2(tos_cronica, dificultad_de_respirar, insuficiencia_pancreatica).
sint2(tos_cronica, dificultad_de_respirar, diabetes).
sint2(tos_cronica, dificultad_de_respirar, sudoracion_excesiva).
sint2(tos_cronica, sinusitis_cronica, dificultad_para_ganar_peso).
sint2(tos_cronica, sinusitis_cronica, heces_voluminosas).
sint2(tos_cronica, sinusitis_cronica, insuficiencia_pancreatica).
sint2(tos_cronica, sinusitis_cronica, diabetes).
sint2(tos_cronica, sinusitis_cronica, sudoracion_excesiva).
sint2(tos_cronica, dificultad_para_ganar_peso, heces_voluminosas).
sint2(tos_cronica, dificultad_para_ganar_peso, insuficiencia_pancreatica).
sint2(tos_cronica, dificultad_para_ganar_peso, diabetes).
sint2(tos_cronica, dificultad_para_ganar_peso, sudoracion_excesiva).
sint2(tos_cronica, heces_voluminosas, insuficiencia_pancreatica).
sint2(tos_cronica, heces_voluminosas, diabetes).
sint2(tos_cronica, heces_voluminosas, sudoracion_excesiva).
sint2(tos_cronica, insuficiencia_pancreatica, diabetes).
sint2(tos_cronica, insuficiencia_pancreatica, sudoracion_excesiva).
sint2(tos_cronica, diabetes, sudoracion_excesiva).
sint2(bronquitis, neumonia, dificultad_de_respirar).
sint2(bronquitis, neumonia, sinusitis_cronica).
sint2(bronquitis, neumonia, dificultad_para_ganar_peso).
sint2(bronquitis, neumonia, heces_voluminosas).
sint2(bronquitis, neumonia, insuficiencia_pancreatica).
sint2(bronquitis, neumonia, diabetes).
sint2(bronquitis, neumonia, sudoracion_excesiva).
sint2(bronquitis, dificultad_de_respirar, sinusitis_cronica).
sint2(bronquitis, dificultad_de_respirar, dificultad_para_ganar_peso).
sint2(bronquitis, dificultad_de_respirar, heces_voluminosas).
sint2(bronquitis, dificultad_de_respirar, insuficiencia_pancreatica).
sint2(bronquitis, dificultad_de_respirar, diabetes).
sint2(bronquitis, dificultad_de_respirar, sudoracion_excesiva).
sint2(bronquitis, sinusitis_cronica, dificultad_para_ganar_peso).
sint2(bronquitis, sinusitis_cronica, heces_voluminosas).
sint2(bronquitis, sinusitis_cronica, insuficiencia_pancreatica).
sint2(bronquitis, sinusitis_cronica, diabetes).
sint2(bronquitis, sinusitis_cronica, sudoracion_excesiva).
sint2(bronquitis, dificultad_para_ganar_peso, heces_voluminosas).
sint2(bronquitis, dificultad_para_ganar_peso, insuficiencia_pancreatica).
sint2(bronquitis, dificultad_para_ganar_peso, diabetes).
sint2(bronquitis, dificultad_para_ganar_peso, sudoracion_excesiva).
sint2(bronquitis, heces_voluminosas, insuficiencia_pancreatica).


match([],[]).
match([], _):- true.

match([S|Stim],[I|Input]) :-
    atom(S),
    S == I,
    match(Stim, Input),!.

match([S|Stim],[_|Input]) :-
    \+atom(S),
    match(Stim, Input),!.

replace0([], _, _, Resp, R):- append(Resp, [], R),!.

#### Respuestas Hogwarts House
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == hogwartsHouse,
    hogwartsHouse(Atom, R).

#### Respuestas Hogwarts House Traits
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == hogwartsHouseTraits,
    hogwartsHouseTraits(Atom, R).

#### Respuestas Hechizo Ejecución
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == spellExecution,
    spellExecution(Atom, R).

#### Respuestas Hechizo Efecto
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == spellEffect,
    spellEffect(Atom, R).

replace0([I|Index], Input, N, Resp, R):-
    nth0(I, Input, Atom),
    length(Index, M), M >= 0,
    select(N, Resp, Atom, R1),
    N1 is N + 1,
    replace0(Index, Input, N1, R1, R),!.

	#### Respuestas Descripción de Personaje
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == characterDescription,
    characterDescription(Atom, R).

#### Respuestas Primera Aparición de Personaje
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == characterFirstAppearance,
    characterFirstAppearance(Atom, R).

	#### Respuestas Ubicación de Lugar
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == placeLocation,
    placeLocation(Atom, R).

#### Respuestas Descripción de Lugar
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == placeDescription,
    placeDescription(Atom, R).

	#### Respuestas Uso de Artefacto
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == artifactUse,
    artifactUse(Atom, R).

#### Respuestas Creador de Artefacto
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == artifactCreator,
    artifactCreator(Atom, R).


#### Respuestas Descripción de Criatura Mágica
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == creatureDescription,
    creatureDescription(Atom, R).

#### Respuestas Hábitat de Criatura Mágica
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == creatureHabitat,
    creatureHabitat(Atom, R).

#### Respuestas Detalles de Evento
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == eventDetails,
    eventDetails(Atom, R).

#### Respuestas Fecha de Evento
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == eventDate,
    eventDate(Atom, R).

#### Respuestas Asignatura en Hogwarts
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == hogwartsSubject,
    hogwartsSubject(Atom, R).

#### Respuestas Profesor en Hogwarts
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == hogwartsProfessor,
    hogwartsProfessor(Atom, R).

#### Respuestas Sobre Casas
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == aboutHouse,
    aboutHouse(Atom, R).

#### Respuestas Dementores
replace0(_, Input, _, Resp, R):-
    nth0(0, Resp, X),
    X == aboutDementors,
    aboutDementors(R).

#### Respuestas Patronus de Personajes
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == characterPatronus,
    characterPatronus(Atom, R).

replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, Flag),
    handleFlag(Flag, Atom, R).

	#### sintomaFQ sint0:
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagSint,
	sintomaFQ(Atom, R).

#### sintomasFQ sint1:
replace0([I,J|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagSint1,
	nth0(J, Input, Atom1),
	nth0(0, Resp, Y),
	Y == flagSint1,
	sintomaFQ1(Atom, Atom1, R).

	#### sintomaFQ2 sint2:
replace0([I,J,K|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagSint2,
	nth0(J, Input, Atom1),
	nth0(0, Resp, Y),
	Y == flagSint2,
	nth0(K, Input, Atom2),
	nth0(0, Resp, Z),
	Z == flagSint2,
	sintomaFQ2(Atom, Atom1, Atom2, R).

	#### Función replace0 que maneja las respuestas de medicamentos
replace0([I|_], Input, _, [medicationFor], R) :-
    nth0(I, Input, Medication),
    medicationFor(Medication, Response),
    atomic_list_concat(Response, ' ', FinalResponse),
    R = [FinalResponse].
