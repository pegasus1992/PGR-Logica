% Definiendo UI.
conectores :- 
   _S1 = [ws_caption,ws_minimizebox,ws_sysmenu,ws_ex_appwindow,dlg_ownedbyprolog],
   _S2 = [ws_child,ws_visible,ss_center],
   _S3 = [ws_child,ws_visible,ss_left],
   _S4 = [ws_child,ws_border,ws_tabstop,ws_visible,es_left,es_multiline,es_autohscroll,es_autovscroll,es_readonly],
   _S5 = [ws_child,ws_tabstop,ws_visible,ws_ex_rightscrollbar,cbs_dropdownlist],
   _S6 = [ws_child,ws_tabstop,ws_visible,bs_pushbutton,bs_text,bs_center,bs_vcenter],
   _S7 = [ws_child,ws_border,ws_tabstop,ws_visible,es_center,es_multiline,es_autohscroll,es_autovscroll,es_readonly],
   wdcreate(  conectores,        `Conectores`,                                                                                                                                                                      427, 194, 486, 269, _S1 ),
   wccreate( (conectores,11000), static,   `Encontrar el conector`,                                                                                                                                                  40,  10, 380,  30, _S2 ),
   wccreate( (conectores,11001), static,   `Este reto consiste en que debes encontrar el conector que enlace ambos fragmentos de la fórmula, de modo que ésta sea tautológica (es decir, que dé siempre verdad).`,   10,  60, 460,  50, _S3 ),
   wccreate( (conectores,8000),  edit,     ``,                                                                                                                                                                       20, 120, 180,  30, _S4 ),
   wccreate( (conectores,5000),  combobox, `Combo1`,                                                                                                                                                                210, 120,  60, 185, _S5 ),
   wccreate( (conectores,8001),  edit,     ``,                                                                                                                                                                      280, 120, 180,  30, _S4 ),
   wccreate( (conectores,15001), button,   `Valor`,                                                                                                                                                                 310, 160,  60,  30, _S6 ),
   wccreate( (conectores,8002),  edit,     ``,                                                                                                                                                                      380, 160,  50,  30, _S7 ),
   wccreate( (conectores,8003),  edit,     ``,                                                                                                                                                                       20, 280,  90,  20, _S4 ),
   wccreate( (conectores,8004),  edit,     ``,                                                                                                                                                                      130, 280,  90,  20, _S4 ),
   wccreate( (conectores,8005),  static,   ``,                                                                                                                                                                      210, 165,  60,  20, _S2 ),
   wccreate( (conectores,1000),  button,   `A`,                                                                                                                                                                      20, 200,  40,  30, _S6 ),
   wccreate( (conectores,1001),  button,   `B`,                                                                                                                                                                     110, 200,  40,  30, _S6 ),
   wccreate( (conectores,1002),  button,   `C`,                                                                                                                                                                     200, 200,  40,  30, _S6 ),
   wccreate( (conectores,1003),  button,   `D`,                                                                                                                                                                     290, 200,  40,  30, _S6 ),
   wccreate( (conectores,1004),  button,   `E`,                                                                                                                                                                     380, 200,  40,  30, _S6 ),
   wccreate( (conectores,7000),  edit,     `v`,                                                                                                                                                                      60, 200,  40,  30, _S7 ),
   wccreate( (conectores,7001),  edit,     `v`,                                                                                                                                                                     150, 200,  40,  30, _S7 ),
   wccreate( (conectores,7002),  edit,     `v`,                                                                                                                                                                     240, 200,  40,  30, _S7 ),
   wccreate( (conectores,7003),  edit,     `v`,                                                                                                                                                                     330, 200,  40,  30, _S7 ),
   wccreate( (conectores,7004),  edit,     `v`,                                                                                                                                                                     420, 200,  40,  30, _S7 ),
   wccreate( (conectores,15000), button,   `Otra fórmula`,                                                                                                                                                           40, 160, 140,  30, _S6 ),
   wccreate( (conectores,25000), button,   `←`,                                                                                                                                                                     430,  10,  40,  30, _S6 ).

iniciar_conectores :- 
		opera,
		fuentes_conectores, 
		pantalla_conectores, 
		!.

fuentes_conectores :- 
		wfcreate( titulo, arial, 40, 2 ), 
		wfcreate( subtitulo, arial, 25, 2 ), 
		wfcreate( grupo, arial, 20, 0 ), 
		wfcreate( botonesNegrilla, arial, 18, 2 ), 
		wfcreate( botones, arial, 20, 0 ), 
		wfcreate( textos, arial, 18, 0 ), 
		wfcreate( textosNegrilla, arial, 18, 2 ), 
		wfcreate( textos2, arial, 15, 0 ), 
		wfcreate( resultados, arial, 24, 0 ), 
		wfcreate( botonAtras, arial, 30, 2 ).

pantalla_conectores :- 
		conectores, 
		show_dialog(conectores), 
		window_handler(conectores,conectores), 
		inicializarElementosConectores, 
		define_brush_colours, 
		fuentesConectores.

fuentesConectores :- 
		forall( member(V,[
			11000
		]), wfont((conectores, V), subtitulo)), 
		forall( member(Ven,[
			1000, 1001, 1002, 1003, 1004, 
			15000, 15001
		]), wfont((conectores,Ven), botonesNegrilla)),
		forall( member(V,[
			11001
		]), wfont((conectores, V), textos2)),
		forall( member(V,[
			7000, 7001, 7002, 7003, 7004, 
			8000, 8001, 8003, 8004
		]), wfont((conectores, V), textos)),
		forall( member(V,[
			8002, 8005, 5000
		]), wfont((conectores, V), textosNegrilla)),
		forall( member(V,[
			25000
		]), wfont((conectores, V), botonAtras)), 
		!.
% Funciones varias.
opcionComboSeleccionada(Opcion) :- 
		setof([Pos, Conector, Sel], 
			(
				integer_bound(0, Pos, 4), 
				wlbxsel((conectores,5000), Pos, Sel), 
				wlbxget((conectores,5000), Pos, Conector)
			), Opciones
		), 
		member([Pos, Conector, 1], Opciones, _), 
		append([], [Pos, Conector], Opcion).

replace_conec(StrOrig, Str) :- 
		string_replace_all(StrOrig, `true`, `v`, StrV), 
		string_replace_all(StrV, `false`, `f`, StrF), 
		string_replace_all(StrF, `A`, `a`, StrA), 
		string_replace_all(StrA, `B`, `b`, StrB), 
		string_replace_all(StrB, `C`, `c`, StrC), 
		string_replace_all(StrC, `D`, `d`, StrD), 
		string_replace_all(StrD, `E`, `e`, Str), 
		!.

valorLetraConec(a,V) :- wtext((conectores,7000),V),!.
valorLetraConec(b,V) :- wtext((conectores,7001),V),!.
valorLetraConec(c,V) :- wtext((conectores,7002),V),!.
valorLetraConec(d,V) :- wtext((conectores,7003),V),!.
valorLetraConec(e,V) :- wtext((conectores,7004),V),!.
valorLetraConec(v, `v`) :- !.
valorLetraConec(f, `f`) :- !.

valorConec(Letra, V) :- 
		len(Letra, 1), 
		member(Letra, [a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z]), 
		valorLetraConec(Letra, V), !.
valorConec(P ≡ Q, V) :- 
		valorConec(P, V1) , valorConec(Q, V2) , eqvlnca(V1, V2, V).
valorConec(P → Q, V) :- 
		valorConec(P, V1) , valorConec(Q, V2) , implccn(V1, V2, V).
valorConec(P ∧ Q, V) :- 
		valorConec(P, V1) , valorConec(Q, V2) , cnjncn(V1, V2, V).
valorConec(P ∨ Q, V) :- 
		valorConec(P, V1) , valorConec(Q, V2) , dsyncn(V1, V2, V).
valorConec(¬ P, V) :- 
		valorConec(P, V1) , ngcn(V1, V).
valorConec(X, Valor) :- 
		write(X)~>X2,
		cat(L, X2, [1, 1]),
		L = [`¬`, S, SS],
		name(S, H),
		not(H = 32),
		cat([S, SS], ResStr, _),
		separar_y_dato(ResStr, Res), 
		valorConec(Res, Valor1), 
		ngcn(Valor1, Valor), !.


% Inicializa la pantalla.
inicializarElementosConectores :- 
		wlbxadd((conectores,5000), 0, `¬`),
		wlbxadd((conectores,5000), 1, `∨`),
		wlbxadd((conectores,5000), 2, `∧`),
		wlbxadd((conectores,5000), 3, `→`),
		wlbxadd((conectores,5000), 4, `≡`),
		escogerFormula(Formula, Left, Conector, Right), 
		wtext((conectores,8000), Left), 
		wtext((conectores,8001), Right), 
		wtext((conectores,8003), Conector), 
		wtext((conectores,8004), Formula).

%% Escoger aleatoriamente una formula y un conector de la misma.
:- dynamic(listaCon/2).
escogerFormula(Formula, Left, Conector, Right) :- 
		setof(
			[ID, Nombre, Formula], 
			expresion(ID, Nombre, Formula), 
			Lista
		), 
		randomElem(Lista, [ID, Nombre, Formula]), 
		str_to_list(Formula, ListaForm), 
		length(ListaForm, Len), 
		retractall(listaCon(_, _)), 
		forall(member(Elem, ListaForm, N), 
			(
				(
					member(Elem, [`¬`, `∨`, `∧`, `→`, `≡`], _), 
					N < Len, 
					N > 1,
					!
				) -> (
					assert(( listaCon(Elem, N) ))
				) ; !
			)
		), 
		findall(
			[Elem, N], 
			listaCon(Elem, N), 
			ListaCon
		), 
		randomElem(ListaCon, [Conector, N]), 
		string_append(Left, _, Formula, P1), P1 is N - 1, 
		string_append(_, Right, Formula, P2), P2 is N, 
		!.

% Acciones de botones.

%% Boton de atras.
conectores( (conectores,25000), msg_button, _, _ ) :- 
		cambioVentanas(conectores, iniciar_retos).

%% Botones valores de terminos.
conectores( (conectores,ID),msg_button ,_, _ ) :- 
		integer_bound(1000, ID, 1004), ID2 is ID + 6000,
		wtext((conectores,ID2), Verd) -> (
			Verd = `v`, wtext((conectores,ID2), `f`) ; wtext((conectores,ID2),`v`)
		), 
		call(conectores((conectores, 15001), msg_button ,_,_)).

%% Al seleccionar del combo.
conectores( (conectores,5000), msg_select, Sel, _ ) :- 
		wtext((conectores,8000), Left), 
		wtext((conectores,8001), Right), 
		opcionComboSeleccionada([_, ConecSelecc]), 
		cat([Left, ConecSelecc, Right], StrOrig, _), 
		replace_conec(StrOrig, Str), 
		(Str = `` -> R = `NO` ; (
			espaciar_cadena(Str, StrSep),
			cade_dato(StrSep, Form), 
			(
				(
					teorema(Form, V), 
					V = 1, 
					R = `SÍ`
				) ; (
					R = `NO`
				)
			)
		)), 
		wtext((conectores,8005), R), 
		call(conectores((conectores, 15001), msg_button ,_,_)).

%% Boton Igual.
conectores((conectores, 15001), msg_button ,_,_) :- 
		wtext((conectores,8000), Left), 
		wtext((conectores,8001), Right), 
		opcionComboSeleccionada([_, Conector]), 
		cat([Left, Conector, Right], StrOrig, _), 
		replace_conec(StrOrig, Str), 
		(Str = `` -> R = `` ; (
			espaciar_cadena(Str, StrSep),
			cade_dato(StrSep, Form), 
			(
				(
					valorConec(Form, V), 
					write(V) ~> R
				) ; (
					%message_box( ok, `No has ingresado una formula bien formada.`, _ ), 
					R = ``
				)
			)
		)),
		wtext((conectores,8002), R).

%% Boton de Otra formula.
conectores((conectores, 15000), msg_button ,_,_) :- 
		escogerFormula(Formula, Left, Conector, Right), 
		wtext((conectores,8000), Left), 
		wtext((conectores,8001), Right), 
		wtext((conectores,8003), Conector), 
		wtext((conectores,8004), Formula), 
		wtext((conectores,8002), ``), 
		wtext((conectores,8005), ``), 
		setof([Pos, Conector, _], 
			(
				integer_bound(0, Pos, 4), 
				wlbxsel((conectores,5000), Pos, 0)
			), _
		).
