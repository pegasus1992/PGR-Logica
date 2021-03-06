% Definiendo UI.
formula :- 
   _S1 = [ws_caption,ws_minimizebox,ws_sysmenu,ws_ex_appwindow,dlg_ownedbyprolog],
   _S2 = [ws_child,bs_groupbox,ws_visible,bs_center],
   _S3 = [ws_child,ws_tabstop,ws_visible,bs_pushbutton,bs_text,bs_center,bs_vcenter],
   _S4 = [ws_child,ws_border,ws_tabstop,ws_visible,es_center,es_lowercase,es_multiline,es_autohscroll,es_autovscroll,es_readonly],
   _S5 = [ws_child,ws_border,ws_tabstop,ws_visible,es_left,es_lowercase,es_autohscroll,es_autovscroll,es_readonly],
   wdcreate(  formula,        `Calculadora`, 377, 128, 616, 508, _S1 ),
   wccreate( (formula,12000), button, ``,     40, 190, 300, 250, _S2 ),
   wccreate( (formula,12002), button, ``,     20,  70, 570, 110, _S2 ),
   wccreate( (formula,12003), button, ``,    360, 190, 210, 250, _S2 ),
   wccreate( (formula,1000),  button, `p`,    50, 390,  80,  40, _S3 ),
   wccreate( (formula,1001),  button, `q`,    50, 330,  80,  40, _S3 ),
   wccreate( (formula,1002),  button, `r`,   150, 330,  80,  40, _S3 ),
   wccreate( (formula,1003),  button, `s`,   250, 330,  80,  40, _S3 ),
   wccreate( (formula,1004),  button, `t`,    50, 270,  80,  40, _S3 ),
   wccreate( (formula,1005),  button, `u`,   150, 270,  80,  40, _S3 ),
   wccreate( (formula,1006),  button, `w`,   250, 270,  80,  40, _S3 ),
   wccreate( (formula,1007),  button, `x`,    50, 210,  80,  40, _S3 ),
   wccreate( (formula,1008),  button, `y`,   150, 210,  80,  40, _S3 ),
   wccreate( (formula,1009),  button, `z`,   250, 210,  80,  40, _S3 ),
   wccreate( (formula,1010),  button, `v`,   150, 390,  40,  40, _S3 ),
   wccreate( (formula,1011),  button, `f`,   190, 390,  40,  40, _S3 ),
   wccreate( (formula,100),   button, `¬`,   380, 390,  70,  30, _S3 ),
   wccreate( (formula,101),   button, `∧`,   380, 330,  70,  30, _S3 ),
   wccreate( (formula,102),   button, `∨`,   470, 330,  70,  30, _S3 ),
   wccreate( (formula,103),   button, `≡`,   380, 270,  70,  30, _S3 ),
   wccreate( (formula,104),   button, `→`,   470, 270,  70,  30, _S3 ),
   wccreate( (formula,105),   button, `(`,   250, 390,  40,  40, _S3 ),
   wccreate( (formula,106),   button, `)`,   290, 390,  40,  40, _S3 ),
   wccreate( (formula,110),   button, `p`,    40,  90,  40,  30, _S3 ),
   wccreate( (formula,112),   button, `q`,    40, 140,  40,  30, _S3 ),
   wccreate( (formula,114),   button, `r`,   150,  90,  40,  30, _S3 ),
   wccreate( (formula,116),   button, `s`,   150, 140,  40,  30, _S3 ),
   wccreate( (formula,118),   button, `t`,   260,  90,  40,  30, _S3 ),
   wccreate( (formula,120),   button, `u`,   260, 140,  40,  30, _S3 ),
   wccreate( (formula,122),   button, `w`,   370,  90,  40,  30, _S3 ),
   wccreate( (formula,124),   button, `x`,   370, 140,  40,  30, _S3 ),
   wccreate( (formula,126),   button, `y`,   480,  90,  40,  30, _S3 ),
   wccreate( (formula,128),   button, `z`,   480, 140,  40,  30, _S3 ),
   wccreate( (formula,111),   edit,   `v`,    90,  90,  40,  30, _S4 ),
   wccreate( (formula,113),   edit,   `v`,    90, 140,  40,  30, _S4 ),
   wccreate( (formula,115),   edit,   `v`,   200,  90,  40,  30, _S4 ),
   wccreate( (formula,117),   edit,   `v`,   200, 140,  40,  30, _S4 ),
   wccreate( (formula,119),   edit,   `v`,   310,  90,  40,  30, _S4 ),
   wccreate( (formula,121),   edit,   `v`,   310, 140,  40,  30, _S4 ),
   wccreate( (formula,123),   edit,   `v`,   420,  90,  40,  30, _S4 ),
   wccreate( (formula,125),   edit,   `v`,   420, 140,  40,  30, _S4 ),
   wccreate( (formula,127),   edit,   `v`,   530,  90,  40,  30, _S4 ),
   wccreate( (formula,129),   edit,   `v`,   530, 140,  40,  30, _S4 ),
   wccreate( (formula,1030),  button, `=`,   470, 390,  70,  30, _S3 ),
   wccreate( (formula,150),   edit,   ``,    460,  20,  70,  40, _S4 ),
   wccreate( (formula,200),   edit,   ``,     30,  20, 420,  40, _S5 ),
   wccreate( (formula,1031),  button, `DEL`, 380, 210,  70,  30, _S3 ),
   wccreate( (formula,1032),  button, `AC`,  470, 210,  70,  30, _S3 ),
   wccreate( (formula,25000), button, `←`,   540,  25,  40,  30, _S3 ).

iniciar_calculadora :- 
		opera, 
		fuentes_calculadora, 
		pantalla_calculadora, 
		menu_calculadora, 
		!.

fuentes_calculadora :- 
		wfcreate( botonesNegrilla, arial, 20, 2 ), 
		wfcreate( botones, arial, 20, 0 ), 
		wfcreate( textos, arial, 18, 0 ), 
		wfcreate( resultados, arial, 24, 0 ), 
		wfcreate( botonAtras, arial, 30, 2 ).

pantalla_calculadora :- 
		formula, 
		show_dialog(formula), 
		window_handler(formula,formula), 
		define_brush_colours, 
		fuentesCalculadora.

fuentesCalculadora :- 
		forall( member(Ven,[
			110, 112, 114, 116, 118, 120, 122, 124, 126, 128,
			1030, 1031, 1032, 
			1010, 1011
		]), wfont((formula,Ven), botonesNegrilla)),
		forall( member(Ven,[
			1000, 1001, 1002, 1003, 1004, 1005, 1006, 1007, 1008, 1009,
			100, 101, 102, 103, 104, 105, 106
		]), wfont((formula,Ven), botones)),
		forall( member(V,[
			111, 113, 115, 117, 119, 121, 123, 125, 127, 129
		]), wfont((formula, V), textos)),
		forall( member(V,[
			150, 200
		]), wfont((formula, V), resultados)), 
		forall( member(V,[
			25000
		]), wfont((formula, V), botonAtras)), 
		!.

% Definiendo logica de operadores.
letras(L) :- member(L, [a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z]).

valorLetraCalc(p,V) :- wtext((formula,111),V),!.
valorLetraCalc(q,V) :- wtext((formula,113),V),!.
valorLetraCalc(r,V) :- wtext((formula,115),V),!.
valorLetraCalc(s,V) :- wtext((formula,117),V),!.
valorLetraCalc(t,V) :- wtext((formula,119),V),!.
valorLetraCalc(u,V) :- wtext((formula,121),V),!.
valorLetraCalc(w,V) :- wtext((formula,123),V),!.
valorLetraCalc(x,V) :- wtext((formula,125),V),!.
valorLetraCalc(y,V) :- wtext((formula,127),V),!.
valorLetraCalc(z,V) :- wtext((formula,129),V),!.
valorLetraCalc(v, `v`) :- !.
valorLetraCalc(f, `f`) :- !.

valor(Letra, V) :- 
		letras(Letra), 
		member(Letra, [f,v,p,q,r,s,t,u,w,x,y,z]), 
		valorLetraCalc(Letra, V).

valor(P, V) :- letras(P) , valor(P, V), !.
valor(P ≡ Q, V) :- 
	valor(P, V1) , valor(Q, V2) , eqvlnca(V1, V2, V).
valor(P → Q, V) :- 
	valor(P, V1) , valor(Q, V2) , implccn(V1, V2, V).
valor(P ∧ Q, V) :- 
	valor(P, V1) , valor(Q, V2) , cnjncn(V1, V2, V).
valor(P ∨ Q, V) :- 
	valor(P, V1) , valor(Q, V2) , dsyncn(V1, V2, V).
valor(¬ P, V) :- 
	valor(P, V1) , ngcn(V1, V).

% Manejo de los menus.

%% Declaracion de la barra de menus.
menu_calculadora :- 
		wmcreate( menu_calc ),
		wmnuadd( menu_calc, -1, `Salir`, 1000 ),
		
		wmcreate( menu1_calc ),
		wmnuadd( menu1_calc, -1, `Copiar`, 1010 ),
		wmnuadd( menu1_calc, -1, `Pegar`, 1011 ),
		
		winapi( (user32,'CreateMenu'), [], 0, DialogMenuHandle ),

		wmnuadd( menu(DialogMenuHandle),-1, `Archivo`, menu_calc ),
		wmnuadd( menu(DialogMenuHandle),-1, `Edición`, menu1_calc ),

		wndhdl(formula,H),
		winapi( (user32,'SetMenu'), [H,DialogMenuHandle ], 0, _ ),
		winapi( (user32,'DrawMenuBar'), [H], 0, _ ).

formula( Win, msg_menu, ID, _ ) :- 
		menus_calculadora(Item,ID), 
		formula( Item, Win ).

add_menu( formula, Name, Item ) :-
		winapi( (user32,'CreateMenu'), [], 0, DialogMenuHandle ),
		wmnuadd( menu(DialogMenuHandle), -1, Name, Item ).

%% Declaracion de los menus.
menus_calculadora(`Salir`,1000).
menus_calculadora(`Copiar`,1010).
menus_calculadora(`Pegar`,1011).

%% Acciones de los elementos de los menus.
formula(`Salir`, Win) :- 
		cambioVentanas(formula, iniciar_evaluacion).

formula(`Copiar`, Win) :- 
		Num is 200, 
		wedttxt((formula,Num), Str), 
		(
			not(Str = ``), 
			asserta(( portapapeles(Str) :- ! ))
		), 
		wfocus((formula,Num)).

formula(`Pegar`, Win) :- 
		Num is 200, 
		portapapeles(Str), 
		wedttxt((formula,Num), Str), 
		wfocus((formula,Num)).

% Acciones de botones.
formula( (formula,25000), msg_button,_, _ ) :- 
		cambioVentanas(formula, iniciar_evaluacion).

%% Botones de terminos y operadores (parte abajo calculadora).
formula((formula,ID),msg_button ,_,_) :- 
		( integer_bound(1000, ID, 1011) ; integer_bound(100, ID, 106) ), 
		wtext((formula,ID),Str),
		
		% Adicionar en la posicion del cursor 
		wedttxt((formula,200),Str),
		
		wtext((formula, 150), ``).

%% Botones valores de terminos (parte arriba calculadora).
formula((formula,ID),msg_button ,_,_) :- 
		member(ID,[110,112,114,116,118,120,122,124,126,128]), ID2 is ID + 1,
		wtext((formula,ID2), Verd) -> (
			Verd = `v`, wtext((formula,ID2), `f`) ; wtext((formula,ID2),`v`)
		),
		call(formula((formula, 1030), msg_button ,_,_)).

%% Boton Igual.
formula((formula, 1030), msg_button ,_,_) :- 
		wtext((formula,200), Str),
		(Str = `` -> R = `` ; (
			espaciar_cadena(Str, StrSep),
			cade_dato(StrSep, Form), 
			(
				(
					variables(Form, _), 
					valor(Form, V),
					write(V) ~> R
				) ; (
					message_box( ok, `No has ingresado una formula bien formada.`, _ ), 
					R = ``
				)
			)
		)),
		wtext((formula,150), R).

%% Boton Borrar Uno (DEL).
formula((formula, 1031), msg_button ,_,_) :- 
				% Borrar en la posicion del cursor
				wedtsel((formula,200), Start, End), 
				Fin is End - 1, 
				wedttxt((formula,200), ``), 
				wfocus((formula,200)), 
				wedtsel((formula,200), Start, Fin), 
				
				wtext((formula, 150), ``).

%% Boton Borrar Todo (AC).
formula((formula, 1032), msg_button ,_,_) :- 
				wtext((formula, 200), ``),
				wtext((formula, 150), ``).
