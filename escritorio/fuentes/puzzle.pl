% Definiendo UI.
puzzle :- 
   _S1 = [ws_caption,ws_minimizebox,ws_sysmenu,ws_ex_appwindow,dlg_ownedbyprolog],
   _S2 = [ws_child,bs_groupbox,ws_visible,bs_left],
   _S3 = [ws_child,ws_visible,ss_center],
   _S4 = [ws_child,ws_visible,ss_left],
   _S5 = [ws_child,ws_border,ws_tabstop,ws_visible,es_center,es_multiline,es_autohscroll,es_autovscroll,es_readonly],
   _S6 = [ws_child,ws_tabstop,ws_visible,bs_pushbutton,bs_text,bs_center,bs_vcenter],
   _S7 = [ws_child,ws_disabled,ws_visible,ss_grayrect],
   _S8 = [ws_child,bs_groupbox,ws_visible,bs_center],
   _S9 = [ws_child,ws_border,ws_tabstop,ws_visible,es_center,es_multiline,es_autohscroll,es_autovscroll,es_readonly],
   _S10 = [ws_child,ws_tabstop,ws_visible,bs_pushbutton,bs_text,bs_center,bs_vcenter,bs_multiline],
   wdcreate(  puzzle,        `Puzzle`,                                                                                                                  446, 130, 446, 458, _S1  ),
   wccreate( (puzzle,12000), button, ``,                                                                                                                 20, 160, 290, 260, _S2  ),
   wccreate( (puzzle,11000), static, `Puzzle`,                                                                                                           40,  10, 340,  30, _S3  ),
   wccreate( (puzzle,11001), static, `Este reto consiste en armar, con este rompezabezas (o puzzle), la fórmula lógica que se muestra a continuación.`,  10,  50, 420,  30, _S4  ),
   wccreate( (puzzle,12002), button, `Fórmula a armar`,                                                                                                  50,  90, 340,  60, _S2  ),
   wccreate( (puzzle,8020),  edit,   ``,                                                                                                                 60, 110, 320,  30, _S5  ),
   wccreate( (puzzle,1),     button, ``,                                                                                                                 30, 180,  60,  50, _S6  ),
   wccreate( (puzzle,2),     button, ``,                                                                                                                100, 180,  60,  50, _S6  ),
   wccreate( (puzzle,3),     button, ``,                                                                                                                170, 180,  60,  50, _S6  ),
   wccreate( (puzzle,4),     button, ``,                                                                                                                240, 180,  60,  50, _S6  ),
   wccreate( (puzzle,5),     button, ``,                                                                                                                 30, 240,  60,  50, _S6  ),
   wccreate( (puzzle,6),     button, ``,                                                                                                                100, 240,  60,  50, _S6  ),
   wccreate( (puzzle,7),     button, ``,                                                                                                                170, 240,  60,  50, _S6  ),
   wccreate( (puzzle,8),     button, ``,                                                                                                                240, 240,  60,  50, _S6  ),
   wccreate( (puzzle,9),     button, ``,                                                                                                                 30, 300,  60,  50, _S6  ),
   wccreate( (puzzle,10),    button, ``,                                                                                                                100, 300,  60,  50, _S6  ),
   wccreate( (puzzle,11),    button, ``,                                                                                                                170, 300,  60,  50, _S6  ),
   wccreate( (puzzle,12),    button, ``,                                                                                                                240, 300,  60,  50, _S6  ),
   wccreate( (puzzle,13),    button, ``,                                                                                                                 30, 360,  60,  50, _S6  ),
   wccreate( (puzzle,14),    button, ``,                                                                                                                100, 360,  60,  50, _S6  ),
   wccreate( (puzzle,15),    button, ``,                                                                                                                170, 360,  60,  50, _S6  ),
   wccreate( (puzzle,16),    button, ``,                                                                                                                240, 360,  60,  50, _S6  ),
   wccreate( (puzzle,21),    static, ``,                                                                                                                 30, 180,  60,  50, _S7  ),
   wccreate( (puzzle,22),    static, ``,                                                                                                                100, 180,  60,  50, _S7  ),
   wccreate( (puzzle,23),    static, ``,                                                                                                                170, 180,  60,  50, _S7  ),
   wccreate( (puzzle,24),    static, ``,                                                                                                                240, 180,  60,  50, _S7  ),
   wccreate( (puzzle,25),    static, ``,                                                                                                                 30, 240,  60,  50, _S7  ),
   wccreate( (puzzle,26),    static, ``,                                                                                                                100, 240,  60,  50, _S7  ),
   wccreate( (puzzle,27),    static, ``,                                                                                                                170, 240,  60,  50, _S7  ),
   wccreate( (puzzle,28),    static, ``,                                                                                                                240, 240,  60,  50, _S7  ),
   wccreate( (puzzle,29),    static, ``,                                                                                                                 30, 300,  60,  50, _S7  ),
   wccreate( (puzzle,30),    static, ``,                                                                                                                100, 300,  60,  50, _S7  ),
   wccreate( (puzzle,31),    static, ``,                                                                                                                170, 300,  60,  50, _S7  ),
   wccreate( (puzzle,32),    static, ``,                                                                                                                240, 300,  60,  50, _S7  ),
   wccreate( (puzzle,33),    static, ``,                                                                                                                 30, 360,  60,  50, _S7  ),
   wccreate( (puzzle,34),    static, ``,                                                                                                                100, 360,  60,  50, _S7  ),
   wccreate( (puzzle,35),    static, ``,                                                                                                                170, 360,  60,  50, _S7  ),
   wccreate( (puzzle,36),    static, ``,                                                                                                                240, 360,  60,  50, _S7  ),
   wccreate( (puzzle,8001),  edit,   ``,                                                                                                                540, 170,  20,  20, _S5  ),
   wccreate( (puzzle,8002),  edit,   ``,                                                                                                                560, 170,  20,  20, _S5  ),
   wccreate( (puzzle,8003),  edit,   ``,                                                                                                                580, 170,  20,  20, _S5  ),
   wccreate( (puzzle,8004),  edit,   ``,                                                                                                                600, 170,  20,  20, _S5  ),
   wccreate( (puzzle,8005),  edit,   ``,                                                                                                                540, 190,  20,  20, _S5  ),
   wccreate( (puzzle,8006),  edit,   ``,                                                                                                                560, 190,  20,  20, _S5  ),
   wccreate( (puzzle,8007),  edit,   ``,                                                                                                                580, 190,  20,  20, _S5  ),
   wccreate( (puzzle,8008),  edit,   ``,                                                                                                                600, 190,  20,  20, _S5  ),
   wccreate( (puzzle,8009),  edit,   ``,                                                                                                                540, 210,  20,  20, _S5  ),
   wccreate( (puzzle,8010),  edit,   ``,                                                                                                                560, 210,  20,  20, _S5  ),
   wccreate( (puzzle,8011),  edit,   ``,                                                                                                                580, 210,  20,  20, _S5  ),
   wccreate( (puzzle,8012),  edit,   ``,                                                                                                                600, 210,  20,  20, _S5  ),
   wccreate( (puzzle,8013),  edit,   ``,                                                                                                                540, 230,  20,  20, _S5  ),
   wccreate( (puzzle,8014),  edit,   ``,                                                                                                                560, 230,  20,  20, _S5  ),
   wccreate( (puzzle,8015),  edit,   ``,                                                                                                                580, 230,  20,  20, _S5  ),
   wccreate( (puzzle,8016),  edit,   ``,                                                                                                                600, 230,  20,  20, _S5  ),
   wccreate( (puzzle,12001), button, `# de pasos`,                                                                                                      320, 170, 100,  90, _S8  ),
   wccreate( (puzzle,8000),  edit,   `0`,                                                                                                               330, 190,  80,  20, _S9  ),
   wccreate( (puzzle,1001),  button, `Reiniciar`,                                                                                                       330, 220,  80,  30, _S10 ),
   wccreate( (puzzle,12003), button, ``,                                                                                                                320, 270, 100, 140, _S2  ),
   wccreate( (puzzle,1000),  button, `Otra fórmula`,                                                                                                    330, 290,  80,  40, _S10 ),
   wccreate( (puzzle,1002),  button, `Evaluar`,                                                                                                         330, 350,  80,  50, _S10 ),
   wccreate( (puzzle,25000), button, `←`,                                                                                                               390,  10,  40,  30, _S6  ).

iniciar_puzzle :- 
		opera, 
		fuentes_puzzle, 
		pantalla_puzzle, 
		!.

fuentes_puzzle :- 
		wfcreate( titulo, arial, 40, 2 ), 
		wfcreate( subtitulo, arial, 25, 2 ), 
		wfcreate( grupo, arial, 16, 0 ), 
		wfcreate( botonesNegrilla, arial, 18, 2 ), 
		wfcreate( botones, arial, 20, 0 ), 
		wfcreate( textos, arial, 18, 0 ), 
		wfcreate( textosNegrilla, arial, 18, 2 ), 
		wfcreate( textos2, arial, 15, 0 ), 
		wfcreate( textos3, arial, 16, 0 ), 
		wfcreate( resultados, arial, 24, 0 ), 
		wfcreate( botonAtras, arial, 30, 2 ).

pantalla_puzzle :- 
		puzzle, 
		show_dialog(puzzle), 
		window_handler(puzzle,puzzle), 
		inicializarElementosPuzzle, 
		define_brush_colours, 
		fuentesPuzzle.

fuentesPuzzle :- 
		forall( member(V,[
			11000
		]), wfont((puzzle, V), subtitulo)), 
		forall( member(V,[
			12001, 12002
		]), wfont((puzzle, V), grupo)), 
		forall( member(Ven,[
			1000, 1001, 1002
		]), wfont((puzzle,Ven), botonesNegrilla)),
		forall( member(V,[
			11001 
		]), wfont((puzzle, V), textos2)),
		forall( member(V,[
			1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 
			11, 12, 13, 14, 15, 16, 
			8000
		]), wfont((puzzle, V), textos)),
		forall( member(V,[
			8020
		]), wfont((puzzle, V), resultados)),
		forall( member(V,[
			25000
		]), wfont((puzzle, V), botonAtras)), 
		!.

% Funciones varias.
apagarBotones :- 
		forall(
			(
				integer_bound(21, N, 36), 
				M is N - 20
			) , (
				wshow((puzzle,N), 0), 
				wshow((puzzle,M), 1)
			)
		).

iniciarTablero :- 
		wtext((puzzle,8000), `0`), 
		apagarBotones, 
		forall( 
			(
				integer_bound(8001, N, 8016), 
				wtext((puzzle,N), Str), 
				M is N - 8000, 
				Num is M + 20
			), (
				wtext((puzzle,M), Str), 
				(
					Str = `` -> (
						wshow((puzzle,Num), 1), 
						wshow((puzzle,M), 0)
					) ; wshow((puzzle,Num), 0)
				)
			)
		), 
		!.

% Inicializa la pantalla.
inicializarElementosPuzzle :- 
		escogerFormulaPzzl(Formula, Random), 
		wtext((puzzle,8020), Formula), 
		forall(
			member(Elem, Random, N), 
			(
				Num is N + 8000, 
				wtext((puzzle,Num), Elem)
			)
		), 
		iniciarTablero, 
		!.

% Escoger aleatoriamente una formula, adicionarle un espacio y luego desorganizarla.
escogerFormulaPzzl(Formula, Random) :- 
		setof(
			[ID, Formula], 
			expresionPzzl(ID, Formula), 
			Lista
		), 
		randomElem(Lista, [ID, Formula]), 
		str_to_list(Formula, FormList), 
		append(FormList, [``], List), 
		desorganizarLista(List, Random).

% Acciones de botones.

%% Boton de atras.
puzzle( (puzzle,25000), msg_button, _, _ ) :- 
		cambioVentanas(puzzle, iniciar_retos).

%% Botones del puzzle.
puzzle( (puzzle,N), msg_button, 0, _ ) :- 
		integer_bound(1, N, 16), 
		integer_bound(1, M, 16), 
		wtext((puzzle,N), Str), 
		H is N + 20, 
		wtext((puzzle,8000), StrN), 
		number_string(Num, StrN), 
		Nsg is Num + 1, 
		number_string(Nsg, StrNs), 
		(
			(
				M is N - 1, 
				M mod 4 > 0
			) ; (
				M is N + 1, 
				N mod 4 > 0
			) ; (
				M is N + 3
			) ; (
				M is N - 3
			) ; (
				M is N + 4
			) ; (
				M is N - 4
			) ; (
				M is N + 5
			) ; (
				M is N - 5
			)
		), 
		wshow((puzzle,M), St), 
		(
			St = 0 -> (
				apagarBotones, 
				wshow((puzzle,M), 1), 
				wshow((puzzle,N), 0), 
				wshow((puzzle,H), 1), 
				wtext((puzzle,M), Str), 
				wtext((puzzle,N), ``)
			) ; false
		), 
		wtext((puzzle,8000), StrNs).

%% Boton de reiniciar tablero.
puzzle( (puzzle,1001), msg_button, _, _ ) :- 
		iniciarTablero.

%% Boton de otra formula.
puzzle( (puzzle,1000), msg_button, _, _ ) :- 
		inicializarElementosPuzzle.

%% Boton de evaluar.
armarFormula(Head, Lista) :- 
		append(Head, [], Lista),  
		!.

puzzle( (puzzle,1002), msg_button, _, _ ) :- 
		wtext((puzzle,1), Str1), 
		wtext((puzzle,2), Str2), 
		wtext((puzzle,3), Str3), 
		wtext((puzzle,4), Str4), 
		wtext((puzzle,5), Str5), 
		wtext((puzzle,6), Str6), 
		wtext((puzzle,7), Str7), 
		wtext((puzzle,8), Str8), 
		wtext((puzzle,9), Str9), 
		wtext((puzzle,10), Str10), 
		wtext((puzzle,11), Str11), 
		wtext((puzzle,12), Str12), 
		wtext((puzzle,13), Str13), 
		wtext((puzzle,14), Str14), 
		wtext((puzzle,15), Str15), 
		wtext((puzzle,16), Str16), 
		cat(
			[
				Str1, Str2, Str3, Str4, Str5, Str6, Str7, Str8, 
				Str9, Str10, Str11, Str12, Str13, Str14, Str15, Str16
			], Str, _), 
		wtext((puzzle,8020), Formula), 
		(
			Formula = Str -> (
				wtext((puzzle,8000), StrPasos), 
				number_string(Pasos, StrPasos), 
				(
					Pasos < 60 -> 
					cat([`¡Has dado en el clavo con `, StrPasos, ` pasos! ¡Felicidades!~MAquí tienes otro puzzle.`], Mensaje, _); 
					cat([`Has completado este puzzle en `, StrPasos, ` pasos. No está mal, pero puedes mejorar.~MPrueba mejor suerte con otro puzzle.`], Mensaje, _)
				), 
				message_box( ok, Mensaje, _ ), 
				inicializarElementosPuzzle
			) ; (
				message_box( ok, `La respuesta es incorrecta.~MInténtalo de nuevo.`, _ )
			) 
		), 
		!.
