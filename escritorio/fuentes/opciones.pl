fuentes_conceptosTodos :- 
		wfcreate( titulo, arial, 40, 2 ), 
		wfcreate( subtitulo, arial, 25, 2 ), 
		wfcreate( grupo, arial, 18, 2 ), 
		wfcreate( grupo2, arial, 16, 0 ), 
		wfcreate( botonesNegrilla, arial, 18, 2 ), 
		wfcreate( textos, arial, 15, 0 ), 
		wfcreate( textosNegrilla, arial, 15, 2 ), 
		wfcreate( textos2, arial, 14, 0 ), 
		wfcreate( listas, arial, 13, 0 ), 
		wfcreate( resultados, arial, 24, 0 ), 
		wfcreate( botonAtras, arial, 30, 2 ).

define_images_todo :- 
		load_images(negacion_img, 'imagenes/negacion.bmp'), 
		load_images(disyuncion_img, 'imagenes/disyuncion.bmp'), 
		load_images(conjuncion_img, 'imagenes/conjuncion.bmp'), 
		load_images(implicacion_img, 'imagenes/implicacion.bmp'), 
		load_images(equivalencia_img, 'imagenes/equivalencia.bmp'), 
		load_images(conectores_img, 'imagenes/conectores.bmp'), 
		!.

% Definiendo UI - Opcion 1 de conceptos.
conceptos1 :- 
   _S1 = [ws_caption,ws_minimizebox,ws_sysmenu,ws_ex_appwindow,dlg_ownedbyprolog],
   _S2 = [ws_child,ws_visible,ss_center],
   _S3 = [ws_child,bs_groupbox,ws_visible,bs_center],
   _S4 = [ws_child,bs_groupbox,ws_visible,bs_left],
   _S5 = [ws_child,ws_visible,ss_left],
   _S6 = [ws_child,ws_visible,ss_right],
   _S7 = [ws_child,ws_tabstop,ws_visible,bs_pushbutton,bs_text,bs_center,bs_vcenter],
   wdcreate(  conceptos1,        `ECI-Logic`,                                                                                                                                          394, 151, 566, 388, _S1 ),
   wccreate( (conceptos1,11000), static, `Lógica Proposicional`,                                                                                                                        30,  10, 470,  40, _S2 ),
   wccreate( (conceptos1,12000), button, `Objetivo`,                                                                                                                                    10,  50, 540, 300, _S3 ),
   wccreate( (conceptos1,12002), button, `Ejemplo`,                                                                                                                                    110, 160, 330, 180, _S4 ),
   wccreate( (conceptos1,11001), static, `En la lógica proposicional se examinan las posibles relaciones entre proposiciones, sin tener en cuenta su contenido.`,                       20,  80, 520,  30, _S5 ),
   wccreate( (conceptos1,11002), static, `La finalidad de la lógica proposicional es la de reducir procedimientos verbales complicados en simples dispositivos de letras y símbolos.`,  20, 120, 520,  30, _S5 ),
   wccreate( (conceptos1,11004), static, `Proposición:`,                                                                                                                               120, 190,  70,  20, _S6 ),
   wccreate( (conceptos1,11003), static, `7 es un numero primo y 4 es par.`,                                                                                                           200, 190, 230,  20, _S5 ),
   wccreate( (conceptos1,11005), static, `p:`,                                                                                                                                         120, 220,  70,  20, _S6 ),
   wccreate( (conceptos1,11006), static, `7 es un numero primo.`,                                                                                                                      200, 220, 230,  20, _S5 ),
   wccreate( (conceptos1,11008), static, `q:`,                                                                                                                                         120, 250,  70,  20, _S6 ),
   wccreate( (conceptos1,11007), static, `4 es par.`,                                                                                                                                  200, 250, 230,  20, _S5 ),
   wccreate( (conceptos1,11009), static, `Símbolo:`,                                                                                                                                   120, 280,  70,  20, _S6 ),
   wccreate( (conceptos1,11010), static, `y`,                                                                                                                                          200, 280, 230,  20, _S5 ),
   wccreate( (conceptos1,11012), static, `Fórmula:`,                                                                                                                                   120, 310,  70,  20, _S6 ),
   wccreate( (conceptos1,11011), static, `p ∧ q`,                                                                                                                                      200, 310, 230,  20, _S5 ),
   wccreate( (conceptos1,25000), button, `←`,                                                                                                                                          510,  15,  40,  30, _S7 ).

iniciar_conceptos1 :- 
		fuentes_conceptosTodos, 
		pantalla_conceptos1, 
		!.

pantalla_conceptos1 :- 
		conceptos1,
		show_dialog(conceptos1), 
		window_handler(conceptos1,conceptos1), 
		define_brush_colours, 
		fuentesConceptos1.

fuentesConceptos1 :- 
		forall( member(V,[
			11000
		]), wfont((conceptos1, V), titulo)), 
		forall( member(V,[
			12000
		]), wfont((conceptos1, V), grupo)), 
		forall( member(V,[
			12002
		]), wfont((conceptos1, V), grupo2)), 
		forall( member(V,[
			11001, 11002, 11003, 11006, 11007, 11010, 11011
		]), wfont((conceptos1, V), textos)),
		forall( member(V,[
			11004, 11005, 11008, 11009, 11012
		]), wfont((conceptos1, V), textosNegrilla)),
		forall( member(V,[
			25000
		]), wfont((conceptos1, V), botonAtras)), 
		!.

% Definiendo UI - Opcion 2 de conceptos.
conceptos2 :- 
   _S1 = [ws_caption,ws_minimizebox,ws_sysmenu,ws_ex_appwindow,dlg_ownedbyprolog],
   _S2 = [ws_child,ws_visible,ss_center],
   _S3 = [ws_child,bs_groupbox,ws_visible,bs_center],
   _S4 = [ws_child,ws_visible,ss_left],
   _S5 = [ws_child,bs_groupbox,ws_visible,bs_left],
   _S6 = [ws_child,ws_tabstop,ws_visible,bs_pushbutton,bs_text,bs_center,bs_vcenter],
   wdcreate(  conceptos2,        `ECI-Logic`,                                                                                                                                                                                                                                                                                          336,  30, 706, 668, _S1 ),
   wccreate( (conceptos2,11000), static, `Proposiciones`,                                                                                                                                                                                                                                                                               50,  10, 590,  40, _S2 ),
   wccreate( (conceptos2,12000), button, `¿Qué es una proposición?`,                                                                                                                                                                                                                                                                    10,  50, 680, 310, _S3 ),
   wccreate( (conceptos2,11002), static, `Podemos definir una proposición como el significado de una oración declarativa que puede ser Verdadera o Falsa, por ser una afirmación.`,                                                                                                                                                     20,  80, 660,  30, _S4 ),
   wccreate( (conceptos2,11003), static, `Recuérdese, que las oraciones son conjuntos de palabras que expresan pensamientos completos, se dividen en declarativas, interrogativas y exclamativas.`,                                                                                                                                     20, 120, 660,  30, _S4 ),
   wccreate( (conceptos2,11007), static, `Las oraciones declarativas, que son las que nos interesan para nuestro estudio, son aquellas que indican afirmación, así que solo de éstas se puede decir que transmiten una proposición, que puede ser Verdadera o Falsa.`,                                                                  20, 160, 660,  30, _S4 ),
   wccreate( (conceptos2,12002), button, `Ejemplo`,                                                                                                                                                                                                                                                                                     20, 200, 660, 110, _S5 ),
   wccreate( (conceptos2,11008), static, `1. El ácido sulfúrico corroe la madera.`,                                                                                                                                                                                                                                                     80, 230, 250,  20, _S4 ),
   wccreate( (conceptos2,11009), static, `2. Dos más dos es igual a tres.`,                                                                                                                                                                                                                                                             80, 250, 250,  20, _S4 ),
   wccreate( (conceptos2,11010), static, `3. ¿Qué comen los marcianos?`,                                                                                                                                                                                                                                                               410, 230, 250,  20, _S4 ),
   wccreate( (conceptos2,11011), static, `4. ¡Que buena es mi suerte!`,                                                                                                                                                                                                                                                                410, 250, 250,  20, _S4 ),
   wccreate( (conceptos2,11012), static, `Las dos últimas no son oraciones declarativas, pues las órdenes, preguntas o exclamaciones no son verdaderas o falsas.`,                                                                                                                                                                      30, 270, 640,  30, _S4 ),
   wccreate( (conceptos2,11013), static, `Las proposiciones se simbolizan con simples literales y las expresiones mediante las cuales son relacionadas, son signos cuyo significado es constante.`,                                                                                                                                     20, 320, 660,  30, _S4 ),
   wccreate( (conceptos2,12001), button, `Tipos de proposiciones`,                                                                                                                                                                                                                                                                      10, 360, 680, 270, _S3 ),
   wccreate( (conceptos2,12004), button, `Simples o atómicas`,                                                                                                                                                                                                                                                                          20, 380, 330, 240, _S5 ),
   wccreate( (conceptos2,11005), static, `En ellas no es posible distinguir partes componentes que sean, a su vez, también proposiciones, es decir afirmaciones verdaderas o falsas; en otras palabras, tienen un sujeto y un predicado, no tienen claúsulas componentes unidas por conjunciones como "Y", "O", y "SI ... ENTONCES".`,  30, 410, 310, 100, _S4 ),
   wccreate( (conceptos2,12003), button, `Ejemplo`,                                                                                                                                                                                                                                                                                     30, 510, 310, 100, _S5 ),
   wccreate( (conceptos2,11001), static, `1. 4 es un número natural.`,                                                                                                                                                                                                                                                                  40, 540, 290,  20, _S4 ),
   wccreate( (conceptos2,11004), static, `2. La ballena tiene respiración pulmonar.`,                                                                                                                                                                                                                                                   40, 560, 290,  20, _S4 ),
   wccreate( (conceptos2,11014), static, `3. 1976 fue año bisiesto.`,                                                                                                                                                                                                                                                                   40, 580, 290,  20, _S4 ),
   wccreate( (conceptos2,12005), button, `Compuestas`,                                                                                                                                                                                                                                                                                 350, 380, 330, 240, _S5 ),
   wccreate( (conceptos2,11006), static, `Están construidas a partir de otras proposiciones simples o atómicas, asociandolas con una lista de conjunciones lógicas. Estas conjunciones son: "Y", "O", y "SI ... ENTONCES".`,                                                                                                           360, 410, 310,  90, _S4 ),
   wccreate( (conceptos2,12006), button, `Ejemplo`,                                                                                                                                                                                                                                                                                    360, 500, 310, 110, _S5 ),
   wccreate( (conceptos2,11015), static, `1. Turquía es un país europeo o Turquía es un país asiático.`,                                                                                                                                                                                                                               370, 530, 290,  20, _S4 ),
   wccreate( (conceptos2,11016), static, `2. Si la ballena es un mamífero, entonces la ballena tiene respiración pulmonar.`,                                                                                                                                                                                                           370, 550, 290,  30, _S4 ),
   wccreate( (conceptos2,11017), static, `3. 4 es un número natural y 4 es un número par.`,                                                                                                                                                                                                                                            370, 580, 290,  20, _S4 ),
   wccreate( (conceptos2,25000), button, `←`,                                                                                                                                                                                                                                                                                          650,  15,  40,  30, _S6 ).

iniciar_conceptos2 :- 
		fuentes_conceptosTodos, 
		pantalla_conceptos2, 
		!.

pantalla_conceptos2 :- 
		conceptos2,
		show_dialog(conceptos2), 
		window_handler(conceptos2,conceptos2), 
		define_brush_colours, 
		fuentesConceptos2.

fuentesConceptos2 :- 
		forall( member(V,[
			11000
		]), wfont((conceptos2, V), titulo)), 
		forall( member(V,[
			12000, 12001
		]), wfont((conceptos2, V), grupo)), 
		forall( member(V,[
			12002, 12003, 12006, 
			12004, 12005
		]), wfont((conceptos2, V), grupo2)), 
		forall( member(V,[
			11002, 11003, 11007, 11012, 11013, 
			11005, 11006
		]), wfont((conceptos2, V), textos)),
		forall( member(V,[
			11008, 11009, 11010, 11011,  
			11001, 11004, 11014, 
			11015, 11016, 11017
		]), wfont((conceptos2, V), listas)),
		forall( member(V,[
			25000
		]), wfont((conceptos2, V), botonAtras)), 
		!.

% Definiendo UI - Opcion 4 de conceptos.
conceptos4 :- 
   _S1 = [ws_caption,ws_minimizebox,ws_sysmenu,ws_ex_appwindow,dlg_ownedbyprolog],
   _S2 = [ws_child,ws_visible,ss_center],
   _S3 = [ws_child,bs_groupbox,ws_visible,bs_center],
   _S4 = [ws_child,ws_visible,ss_left],
   _S5 = [ws_child,bs_groupbox,ws_visible,bs_left],
   _S6 = [ws_child,ws_border,ws_visible],
   _S7 = [ws_child,ws_tabstop,ws_visible,bs_pushbutton,bs_text,bs_center,bs_vcenter],
   wdcreate(  conceptos4,        `ECI-Logic`,                                                                                                                                                                                                                                                                                                                                                                                         220,   5, 1036, 718, _S1 ),
   wccreate( (conceptos4,11000), static, `Conectores lógicos`,                                                                                                                                                                                                                                                                                                                                                                         50,  10,  910,  40, _S2 ),
   wccreate( (conceptos4,12000), button, `¿Qué es un conector lógico?`,                                                                                                                                                                                                                                                                                                                                                                10,  50, 1010, 120, _S3 ),
   wccreate( (conceptos4,11002), static, `La lógica proposicional posee símbolos especiales, los cuales representan las operaciones básicas sobre las proposiciones, de forma similar a como funcionan las operaciones básicas dentro de las matemáticas (adición, sustracción, multiplicación y división). Estos conectores lógicos permiten formar las proposiciones compuestas.`,                                                   20,  80,  990,  40, _S4 ),
   wccreate( (conceptos4,11003), static, `Los conectores lógicos son como funciones de verdad, es decir que toman conjuntos de valores de verdad y dan como resultado otro valor de verdad. El significado de cada conector está dado por su comportamiento como función de verdad. Cada conector se distingue del resto por los valores de verdad que devuelve, frente a las distintas combinaciones de valores que puede recibir.`,  20, 120,  990,  40, _S4 ),
   wccreate( (conceptos4,12001), button, `Conectores`,                                                                                                                                                                                                                                                                                                                                                                                 10, 170, 1010, 520, _S3 ),
   wccreate( (conceptos4,12004), button, `Negación`,                                                                                                                                                                                                                                                                                                                                                                                  350, 220,  330, 240, _S5 ),
   wccreate( (conceptos4,11005), static, `Se representa mediante el símbolo "¬"; el cual, por convención, se coloca siempre a la izquierda de la proposición que se niega.`,                                                                                                                                                                                                                                                          360, 250,  310,  40, _S4 ),
   wccreate( (conceptos4,11007), static, `El uso de "no" o "¬" actua para invertir la clasificación de la proposición con que se usa. Esto quiere decir que la negación de una proposición verdadera es una falsa, y la negación de una proposición falsa es verdadera.`,                                                                                                                                                             360, 290,  310,  80, _S4 ),
   wccreate( (conceptos4,10000), grafix, `Grafix1`,                                                                                                                                                                                                                                                                                                                                                                                   470, 370,   85,  77, _S6 ),
   wccreate( (conceptos4,12005), button, `Disyunción`,                                                                                                                                                                                                                                                                                                                                                                                 20, 200,  330, 280, _S5 ),
   wccreate( (conceptos4,11001), static, `Se simboliza con el signo "∨", enlaza dos proposiciones simples. Indica que al menos una de ellas es verdadera, aunque pueden serlo ambas.`,                                                                                                                                                                                                                                                 30, 230,  310,  50, _S4 ),
   wccreate( (conceptos4,11004), static, `Dada una proposición compuesta, será verdadera si al menos una de las alternativas o proposicioneses verdadera y cuando las dos lo sean, será falsa sólo cuando las dos alternativas sean falsas.`,                                                                                                                                                                                          30, 280,  310,  70, _S4 ),
   wccreate( (conceptos4,10001), grafix, `Grafix1`,                                                                                                                                                                                                                                                                                                                                                                                   130, 350,  125, 122, _S6 ),
   wccreate( (conceptos4,12002), button, `Conjunción`,                                                                                                                                                                                                                                                                                                                                                                                680, 200,  330, 280, _S5 ),
   wccreate( (conceptos4,11006), static, `Se simboliza mediante el signo "∧", el cual se coloca entre las dos proposiciones simples.`,                                                                                                                                                                                                                                                                                                690, 230,  310,  40, _S4 ),
   wccreate( (conceptos4,11008), static, `Tiene el sentido de afirmar que las dos proposiciones son simultánemanete verdaderas, así que para que la proposición compuesta resultante sea verdadera se requiere que efectivamente las dos proposiciones sean verdaderas, en otro caso la proposicion resultante será falsa.`,                                                                                                          690, 270,  310,  80, _S4 ),
   wccreate( (conceptos4,10002), grafix, `Grafix1`,                                                                                                                                                                                                                                                                                                                                                                                   780, 350,  134, 121, _S6 ),
   wccreate( (conceptos4,12003), button, `Implicación`,                                                                                                                                                                                                                                                                                                                                                                                30, 480,  480, 200, _S5 ),
   wccreate( (conceptos4,11009), static, `Se simboliza con el signo "→", se escribe entre las dos proposiciones relacionadas. Es importante distinguir la proposición que queda a la izquierda del signo "→", a la cual se le llama antecedente, de la que queda a la derecha del signo a lo que se llama consecuente.`,                                                                                                               40, 510,  310,  80, _S4 ),
   wccreate( (conceptos4,11010), static, `El sentido de este conector es señalar, que si la proposición antecedente es verdadera, también lo es la proposición consecuente. Una proposición compuesta será falsa si la antecedente es verdadero y el concecuente es falso; en los demás casos la proposición resultante es verdadera.`,                                                                                                40, 590,  310,  80, _S4 ),
   wccreate( (conceptos4,10003), grafix, `Grafix1`,                                                                                                                                                                                                                                                                                                                                                                                   360, 530,  136, 122, _S6 ),
   wccreate( (conceptos4,12006), button, `Equivalencia`,                                                                                                                                                                                                                                                                                                                                                                              520, 480,  460, 200, _S5 ),
   wccreate( (conceptos4,11011), static, `Se simboliza con el signo "≡", al relacionar dos proposiciones indica que el valor de verdad de ambas es el mismo.`,                                                                                                                                                                                                                                                                        530, 520,  310,  40, _S4 ),
   wccreate( (conceptos4,11012), static, `(p ≡ q) es una proposición que significa, que si p es verdadera, entonces q también es verdadera. Este conector es la conjuncion de dos proposiciones condicionales (→), es decir que (p≡q)≡(p→q)∧(q→p).`,                                                                                                                                                                                  530, 580,  310,  80, _S4 ),
   wccreate( (conceptos4,10004), grafix, `Grafix1`,                                                                                                                                                                                                                                                                                                                                                                                   850, 530,  122, 120, _S6 ),
   wccreate( (conceptos4,25000), button, `←`,                                                                                                                                                                                                                                                                                                                                                                                         970,  15,   40,  30, _S7 ).

iniciar_conceptos4 :- 
		fuentes_conceptosTodos, 
		pantalla_conceptos4, 
		!.

pantalla_conceptos4 :- 
		conceptos4,
		show_dialog(conceptos4), 
		window_handler(conceptos4,conceptos4), 
		define_brush_colours, 
		define_images_todo, 
		fuentesConceptos4.

fuentesConceptos4 :- 
		forall( member(V,[
			11000
		]), wfont((conceptos4, V), titulo)), 
		forall( member(V,[
			12000, 12001
		]), wfont((conceptos4, V), grupo)), 
		forall( member(V,[
			12002, 12003, 12004, 12005, 12006
		]), wfont((conceptos4, V), grupo2)), 
		forall( member(V,[
			11002, 11003, 
			11005, 11007, 
			11001, 11004, 
			11006, 11008, 
			11009, 11010, 
			11011, 11012
		]), wfont((conceptos4, V), textos2)),
		forall( member(V,[
			25000
		]), wfont((conceptos4, V), botonAtras)), 
		!.

% Cargar imagenes.
conceptos4( (conceptos4,10000), msg_paint,_,_ ) :- 
		gfx_paint((conceptos4,10000)), 
		gfx(bitmap(3,-1,85,77,5,0,negacion_img)), 
		gfx_end((conceptos4,10000)).

conceptos4( (conceptos4,10001), msg_paint,_,_ ) :- 
		gfx_paint((conceptos4,10001)), 
		gfx(bitmap(3,-1,125,122,5,0,disyuncion_img)), 
		gfx_end((conceptos4,10001)).

conceptos4( (conceptos4,10002), msg_paint,_,_ ) :- 
		gfx_paint((conceptos4,10002)), 
		gfx(bitmap(3,-1,134,121,5,0,conjuncion_img)), 
		gfx_end((conceptos4,10002)).

conceptos4( (conceptos4,10003), msg_paint,_,_ ) :- 
		gfx_paint((conceptos4,10003)), 
		gfx(bitmap(3,-1,136,122,5,0,implicacion_img)), 
		gfx_end((conceptos4,10003)).

conceptos4( (conceptos4,10004), msg_paint,_,_ ) :- 
		gfx_paint((conceptos4,10004)), 
		gfx(bitmap(3,-1,122,121,5,0,equivalencia_img)), 
		gfx_end((conceptos4,10004)).

%% Definiendo UI - Opcion 5 de conceptos.
conceptos5 :- 
   _S1 = [ws_caption,ws_minimizebox,ws_sysmenu,ws_ex_appwindow,dlg_ownedbyprolog],
   _S2 = [ws_child,ws_visible,ss_center],
   _S3 = [ws_child,bs_groupbox,ws_visible,bs_center],
   _S4 = [ws_child,ws_visible,ss_left],
   _S5 = [ws_child,ws_border,ws_visible],
   _S6 = [ws_child,bs_groupbox,ws_visible,bs_left],
   _S7 = [ws_child,ws_visible,ss_right],
   _S8 = [ws_child,ws_tabstop,ws_visible,bs_pushbutton,bs_text,bs_center,bs_vcenter],
   wdcreate(  conceptos5,        `ECI-Logic`,                                                                                                                                                                                                                                                 341,  60, 726, 618, _S1 ),
   wccreate( (conceptos5,11000), static, `Reglas de Inferencia`,                                                                                                                                                                                                                               50,  10, 600,  40, _S2 ),
   wccreate( (conceptos5,12000), button, `¿Qué es una regla de inferencia?`,                                                                                                                                                                                                                   10,  50, 700, 530, _S3 ),
   wccreate( (conceptos5,11002), static, `Una regla de inferencia es una función que recibe fórmulas lógicas y da como resultado otra fórmula lógica. Al conjunto de fórmulas que entran se les conoce con el nombre de premisas, mientras que la fórmula que devuelve se llama conclusión.`,  20,  80, 680,  50, _S4 ),
   wccreate( (conceptos5,10000), grafix, `Grafix1`,                                                                                                                                                                                                                                            20, 130, 681, 254, _S5 ),
   wccreate( (conceptos5,11003), static, `En otras palabras, se busca que las reglas de inferencia transmitan la verdad de las premisas a la conclusión, de modo que se hace imposible que las premisas sean verdaderas y la conclusión sea falsa.`,                                           20, 390, 680,  40, _S4 ),
   wccreate( (conceptos5,12002), button, `Ejemplo`,                                                                                                                                                                                                                                           230, 430, 270, 140, _S6 ),
   wccreate( (conceptos5,11005), static, `Nombre:`,                                                                                                                                                                                                                                           240, 460,  90,  20, _S7 ),
   wccreate( (conceptos5,11001), static, `Modus Ponens`,                                                                                                                                                                                                                                      340, 460, 150,  20, _S4 ),
   wccreate( (conceptos5,11008), static, `Premisas:`,                                                                                                                                                                                                                                         240, 500,  90,  20, _S7 ),
   wccreate( (conceptos5,11004), static, `p`,                                                                                                                                                                                                                                                 340, 490, 150,  20, _S4 ),
   wccreate( (conceptos5,11006), static, `p→q`,                                                                                                                                                                                                                                               340, 510, 150,  20, _S4 ),
   wccreate( (conceptos5,11009), static, `Conclusión:`,                                                                                                                                                                                                                                       240, 540,  90,  20, _S7 ),
   wccreate( (conceptos5,11007), static, `q`,                                                                                                                                                                                                                                                 340, 540, 150,  20, _S4 ),
   wccreate( (conceptos5,25000), button, `←`,                                                                                                                                                                                                                                                 660,  15,  40,  30, _S8 ).

iniciar_conceptos5 :- 
		fuentes_conceptosTodos, 
		pantalla_conceptos5, 
		!.

pantalla_conceptos5 :- 
		conceptos5,
		show_dialog(conceptos5), 
		window_handler(conceptos5,conceptos5), 
		define_brush_colours, 
		define_images_todo, 
		fuentesConceptos5.

fuentesConceptos5 :- 
		forall( member(V,[
			11000
		]), wfont((conceptos5, V), titulo)), 
		forall( member(V,[
			12000
		]), wfont((conceptos5, V), grupo)), 
		forall( member(V,[
			12002
		]), wfont((conceptos5, V), grupo2)), 
		forall( member(V,[
			11002, 11003, 
			11001, 11004, 11006, 11007
		]), wfont((conceptos5, V), textos)),
		forall( member(V,[
			11005, 11008, 11009
		]), wfont((conceptos5, V), textosNegrilla)),
		forall( member(V,[
			25000
		]), wfont((conceptos5, V), botonAtras)), 
		!.

% Cargar imagenes.
conceptos5( (conceptos5,10000), msg_paint,_,_ ) :- 
		gfx_paint((conceptos5,10000)), 
		gfx(bitmap(2,-1,681,254,5,0,conectores_img)), 
		gfx_end((conceptos5,10000)).

% Acciones de botones.
conceptos1( (conceptos1,25000), msg_button,_,_ ) :- 
		cambioVentanas(conceptos1, iniciar_conceptos).

conceptos2( (conceptos2,25000), msg_button,_,_ ) :- 
		cambioVentanas(conceptos2, iniciar_conceptos).

conceptos4( (conceptos4,25000), msg_button,_,_ ) :- 
		cambioVentanas(conceptos4, iniciar_conceptos).

conceptos5( (conceptos5,25000), msg_button,_,_ ) :- 
		cambioVentanas(conceptos5, iniciar_conceptos).
