% Definiendo UI.
arbol :- 
   _S1 = [ws_caption,ws_minimizebox,ws_sysmenu,ws_ex_appwindow,dlg_ownedbyprolog],
   _S2 = [ws_child,bs_groupbox,ws_visible,bs_left],
   _S3 = [ws_child,ws_tabstop,ws_visible,bs_pushbutton,bs_text,bs_center,bs_vcenter],
   _S4 = [ws_child,ws_border],
   _S5 = [ws_child,ws_visible,ws_tabstop,bs_pushbutton],
   _S6 = [ws_child,ws_border,ws_tabstop,ws_visible,es_center,es_multiline,es_autohscroll,es_autovscroll,es_readonly],
   _S7 = [ws_child,ws_visible,ss_center],
   _S8 = [ws_child,ws_border,ws_visible,ss_center],
   _S9 = [ws_child,ws_tabstop,ws_visible,bs_pushbutton,bs_text,bs_center,bs_vcenter,bs_multiline],
   _S10 = [ws_child,ws_visible,ws_tabstop,ws_border],
   _S11 = [ws_child,ws_visible,bs_autoradiobutton],
   _S12 = [ws_child,ws_visible,ws_border,ss_center],
   _S13 = [ws_child,ws_tabstop,ws_border,es_center,es_multiline,es_autohscroll,es_autovscroll],
   wdcreate(  arbol,        `Árbol sintáctico`,             91,   7, 1216, 728, _S1  ),
   wccreate( (arbol,12001), button, `Valores`,              10, 320,  120, 340, _S2  ),
   wccreate( (arbol,1),     button, `p`,                    20, 350,   50,  30, _S3  ),
   wccreate( (arbol,2),     button, `q`,                    20, 380,   50,  30, _S3  ),
   wccreate( (arbol,3),     button, `r`,                    20, 410,   50,  30, _S3  ),
   wccreate( (arbol,5),     button, `t`,                    20, 470,   50,  30, _S3  ),
   wccreate( (arbol,4),     button, `s`,                    20, 440,   50,  30, _S3  ),
   wccreate( (arbol,6),     button, `u`,                    20, 500,   50,  30, _S3  ),
   wccreate( (arbol,7),     button, `w`,                    20, 530,   50,  30, _S3  ),
   wccreate( (arbol,8),     button, `x`,                    20, 560,   50,  30, _S3  ),
   wccreate( (arbol,9),     button, `y`,                    20, 590,   50,  30, _S3  ),
   wccreate( (arbol,10),    button, `z`,                    20, 620,   50,  30, _S3  ),
   wccreate( (arbol,21),    grafix, `v`,                    70, 350,   50,  30, _S4  ),
   wccreate( (arbol,22),    grafix, `v`,                    70, 380,   50,  30, _S4  ),
   wccreate( (arbol,23),    grafix, `v`,                    70, 410,   50,  30, _S4  ),
   wccreate( (arbol,24),    grafix, `v`,                    70, 440,   50,  30, _S4  ),
   wccreate( (arbol,25),    grafix, `v`,                    70, 470,   50,  30, _S4  ),
   wccreate( (arbol,26),    grafix, `v`,                    70, 500,   50,  30, _S4  ),
   wccreate( (arbol,27),    grafix, `v`,                    70, 530,   50,  30, _S4  ),
   wccreate( (arbol,28),    grafix, `v`,                    70, 560,   50,  30, _S4  ),
   wccreate( (arbol,29),    grafix, `v`,                    70, 590,   50,  30, _S4  ),
   wccreate( (arbol,30),    grafix, `v`,                    70, 620,   50,  30, _S4  ),
   wccreate( (arbol,12000), button, ``,                    270,   0,  690,  50, _S2  ),
   wccreate( (arbol,1004),  button, `¬`,                   680,  10,   30,  30, _S3  ),
   wccreate( (arbol,1005),  button, `∨`,                   710,  10,   30,  30, _S3  ),
   wccreate( (arbol,1006),  button, `∧`,                   740,  10,   30,  30, _S3  ),
   wccreate( (arbol,1007),  button, `→`,                   770,  10,   30,  30, _S3  ),
   wccreate( (arbol,1008),  button, `≡`,                   800,  10,   30,  30, _S3  ),
   wccreate( (arbol,1013),  button, `(`,                   600,  10,   30,  30, _S3  ),
   wccreate( (arbol,1014),  button, `)`,                   630,  10,   30,  30, _S3  ),
   wccreate( (arbol,1015),  button, `p`,                   280,  10,   30,  30, _S3  ),
   wccreate( (arbol,1016),  button, `q`,                   310,  10,   30,  30, _S3  ),
   wccreate( (arbol,1017),  button, `r`,                   340,  10,   30,  30, _S3  ),
   wccreate( (arbol,1018),  button, `s`,                   370,  10,   30,  30, _S3  ),
   wccreate( (arbol,1019),  button, `t`,                   400,  10,   30,  30, _S3  ),
   wccreate( (arbol,1020),  button, `u`,                   430,  10,   30,  30, _S3  ),
   wccreate( (arbol,1021),  button, `w`,                   460,  10,   30,  30, _S3  ),
   wccreate( (arbol,1023),  button, `x`,                   490,  10,   30,  30, _S3  ),
   wccreate( (arbol,1024),  button, `y`,                   520,  10,   30,  30, _S3  ),
   wccreate( (arbol,1025),  button, `z`,                   550,  10,   30,  30, _S5  ),
   wccreate( (arbol,1011),  button, `DEL`,                 850,  10,   50,  30, _S3  ),
   wccreate( (arbol,1012),  button, `AC`,                  900,  10,   50,  30, _S3  ),
   wccreate( (arbol,8001),  edit,   ``,                    250,  60,  730,  30, _S6  ),
   wccreate( (arbol,10004), static, `Fórmula a analizar`,  250,  90,  730,  20, _S7  ),
   wccreate( (arbol,10001), static, `Sintaxis`,            250, 110,  730,  20, _S8  ),
   wccreate( (arbol,1001),  button, `Dibujar Árbol`,       990,  60,  120,  30, _S9  ),
   wccreate( (arbol,1035),  button, `Borrar árbol`,        990, 100,  120,  30, _S5  ),
   wccreate( (arbol,9000),  grafix, `Grafix1`,             140, 140, 1040, 500, _S10 ),
   wccreate( (arbol,1000),  button, `←`,               140, 640,  520,  30, _S5  ),
   wccreate( (arbol,1031),  button, `→`,               660, 640,  520,  30, _S3  ),
   wccreate( (arbol,1032),  button, `↑`,                  1180, 140,   30, 250, _S5  ),
   wccreate( (arbol,1033),  button, `↓`,                  1180, 390,   30, 250, _S5  ),
   wccreate( (arbol,12003), button, `Acciones`,             25,  15,  200, 100, _S2  ),
   wccreate( (arbol,2000),  button, `Abrir`,                35,  45,   90,  20, _S11 ),
   wccreate( (arbol,2001),  button, `Mover`,                35,  65,   90,  20, _S11 ),
   wccreate( (arbol,2002),  button, `Borrar`,              125,  45,   90,  20, _S11 ),
   wccreate( (arbol,2003),  button, `Camino`,               35,  85,   90,  20, _S11 ),
   wccreate( (arbol,2004),  button, `ElimNodo`,            125,  65,   90,  20, _S11 ),
   wccreate( (arbol,2005),  button, `ElimEnlace`,          125,  85,   90,  20, _S11 ),
   wccreate( (arbol,12002), button, `Amplitud`,             10, 190,  120,  80, _S2  ),
   wccreate( (arbol,8003),  edit,   `130`,                  20, 220,  100,  20, _S6  ),
   wccreate( (arbol,1002),  button, `←`,                20, 240,   50,  20, _S5  ),
   wccreate( (arbol,1003),  button, `→`,                70, 240,   50,  20, _S3  ),
   wccreate( (arbol,1030),  button, `Mostrar fórmulas`,     10, 280,  120,  30, _S9  ),
   wccreate( (arbol,10002), static, `Verdaderos`,           10, 140,   80,  20, _S12 ),
   wccreate( (arbol,10003), static, `Falsos`,               10, 160,   80,  20, _S12 ),
   wccreate( (arbol,8004),  edit,   `0`,                    90, 160,   40,  20, _S6  ),
   wccreate( (arbol,8005),  edit,   `0`,                    90, 140,   40,  20, _S6  ),
   wccreate( (arbol,8000),  edit,   `5`,                  1220,  40,   40,  20, _S13 ),
   wccreate( (arbol,25000), button, `←`,                  1140,  10,   40,  30, _S3  ).

iniciar_arbol :- 
		opera, 
		fuentes_arbol, 
		pantalla_arbol, 
		menu_arbol, 
		!.

fuentes_arbol :- 
		wfcreate( titulo, arial, 40, 2 ), 
		wfcreate( subtitulo, arial, 25, 2 ), 
		wfcreate( grupo, arial, 18, 2 ), 
		wfcreate( grupo2, arial, 16, 0 ), 
		wfcreate( botonesNegrilla, arial, 18, 2 ), 
		wfcreate( botonesNegrilla2, arial, 16, 2 ),
		wfcreate( botones, arial, 20, 0 ), 
		wfcreate( textos, arial, 16, 0 ), 
		wfcreate( resultados, arial, 16, 0 ), 
		wfcreate( resultados2, arial, 20, 0 ), 
		wfcreate( notas, arial, 12, 0 ), 
		wfcreate( botonAtras, arial, 30, 2 ).

pantalla_arbol :- 
		arbol, 
		show_dialog(arbol), 
		window_handler(arbol,arbol), 
		define_brush_colours, 
		create_objects, 
		crea_fuentes, 
		crea_pen, 
		fuentesArbol, 
		reestablecerValores, 
		reestablecerCanvas.

fuentesArbol :- 
		forall( member(V,[
			12001, 12002, 12003
		]), wfont((arbol, V), grupo)), 
		forall( member(Ven,[
			1000, 1031, 1032, 1033, 
			1002, 1003, 
			1004, 1005, 1006, 1007, 1008, 
			1011, 1012, 1013, 1014
		]), wfont((arbol,Ven), botonesNegrilla)),
		forall( member(Ven,[
			1001, 1030, 1035, 
			10002, 10003
		]), wfont((arbol,Ven), botonesNegrilla2)),
		forall( member(Ven,[
			1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 
			1015, 1016, 1017, 1018, 1019, 
			1020, 1021, 1023, 1024, 1025
		]), wfont((arbol,Ven), botones)),
		forall( member(V,[
			2000, 2001, 2002, 2003, 2004, 2005, 
			8003, 8004, 8005
		]), wfont((arbol, V), textos)),
		forall( member(V,[
			10001, 10004
		]), wfont((arbol, V), resultados)),
		forall( member(V,[
			8001
		]), wfont((arbol, V), resultados2)),
		forall( member(V,[
			25000
		]), wfont((arbol, V), botonAtras)).

% Funciones varias.
:- dynamic[listNodosDinamica/1, listEnlacesDinamica/1, nodosLis3/1].
:- dynamic[listNodos/1, enlaceTempo/3].
:- dynamic[valorLetra/2].

confArbol(M, N) :- 
		gfx_paint((arbol,N)),
		gfx( (brush = M -> rectangle(0, 0, 50, 30)) ), 
		gfx_end((arbol,N)).

prenderOpcion(N) :- 
		forall(integer_bound(2000, Nn, 2005), 
		wbtnsel((arbol,Nn), 0)),
		wbtnsel((arbol,N), 1).

% Leer y escribir en las ventanas.
valores(Num, Valor) :- 
		wtext((arbol,Num), Str), 
		cade_dato(Str, Valor).

esVent(Num, Dat) :- 
		write(Dat)~>StrDat, 
		wtext((arbol,Num),StrDat).

% Semantica
valorLetra(L) :- 
		findall(
			[Letra, Valor], (
				integer_bound(1, N, 10),
				wtext((arbol, N), Letra),
				M is N + 20,
				wtext((arbol, M), Valor)
			), L
		).

valorLetra(p,V) :- wtext((arbol,21),V),!.
valorLetra(q,V) :- wtext((arbol,22),V),!.
valorLetra(r,V) :- wtext((arbol,23),V),!.
valorLetra(s,V) :- wtext((arbol,24),V),!.
valorLetra(t,V) :- wtext((arbol,25),V),!.
valorLetra(u,V) :- wtext((arbol,26),V),!.
valorLetra(w,V) :- wtext((arbol,27),V),!.
valorLetra(x,V) :- wtext((arbol,28),V),!.
valorLetra(y,V) :- wtext((arbol,29),V),!.
valorLetra(z,V) :- wtext((arbol,30),V),!.

vfbf2(A, Valor) :-
		len(A, 1),
		member(A, [a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z] ),
		valorLetra(A, Valor), !.
vfbf2(A ∧ B, Valor) :- 
		vfbf2(A, V1),
		vfbf2(B, V2),
		cnjncn(V1, V2, Valor).
vfbf2(A ∨ B, Valor) :- 
		vfbf2(A, V1),
		vfbf2(B, V2),
		dsyncn(V1, V2, Valor).
vfbf2(A → B, Valor) :- 
		vfbf2(A, V1),
		vfbf2(B, V2),
		implccn(V1, V2, Valor).
vfbf2(A ≡ B, Valor) :- 
		vfbf2(A, V1),
		vfbf2(B, V2),
		eqvlnca(V1, V2, Valor).
vfbf2(¬ A, Valor) :- 
		vfbf2(A, V1),
		ngcn(V1, Valor).
vfbf2(X, Valor) :- 
		write(X)~>X2,
		cat(L, X2, [1, 1]),
		L = [`¬`, S, SS],
		name(S, H),
		not(H = 32),
		cat([S, SS], ResStr, _),
		separar_y_dato(ResStr, Res), 
		vfbf2(Res, Valor1), 
		ngcn(Valor1, Valor), !.

% Pintar el Canvas.
pintaCANVAS2 :- 
		gfx_begin((arbol,9000)), 
		gfx( ( brush = stock(ltgray_brush) -> rectangle(-3000, -32768, 32768, 32768)) ), 
		gfx_end((arbol,9000)).

%% Pintar una lista de nodos.
pintarNodos2(L) :- 
		gfx_begin((arbol,9000)), 
		forall(
			member([X, Y, Nivel, Color, Letra, Valor, DimNodo, Figura, padre(X0, Y0)], L), 
			(
				H is X + DimNodo, 
				K is Y + DimNodo, 
				X1 is X - DimNodo, 
				Y1 is Y - DimNodo, 
				conectPrin([Letra], Cone), 
				writeq(Letra)~>StrLetra, 
				M is X - 6, 
				N is Y - 10, 
				gfx( ( (brush = Color, pen = blue) -> Figura(X1, Y1, H, K) ) ), 
				gfx( ( (fore = leaf, font = fee) -> text(M, N, Cone) ) )
			)
		), 
		gfx_end((arbol,9000)).

%% Pintar lista de nodos con un color dado.
pintarNodos2(L, Color) :- 
		gfx_begin((arbol,9000)), 
		forall(
			member([X, Y, Nivel, Color, Letra, Valor, DimNodo, Figura, padre(X0, Y0)], L), 
			(
				H is X + DimNodo, 
				K is Y + DimNodo, 
				X1 is X - DimNodo, 
				Y1 is Y - DimNodo, 
				writeq(Letra)~>StrLetra, 
				M is X - 10, 
				N is Y - 7, 
				gfx( ( (brush = Color, pen = black) -> Figura(X1, Y1, H, K) ) ), 
				gfx( ( (fore = leaf, font = foo) -> text(M, N, StrLetra) ) )
			)
		), 
		gfx_end((arbol,9000)).

%% Pintar nodo con la dimension que se quiera.
pintaNodo3([X, Y, W, Z, Color1]) :- 
		gfx_begin((arbol,9000)), 
		gfx( ( ( brush = Color1, pen = black, rop = stock(notxorpen_rop)) -> rectangle(X, Y, W, Z) ) ),
		gfx_end((arbol,9000)).

%% Graficar lista de nodos de los anteriores.
pintaLis3(L) :- 
		gfx_begin((arbol,9000)), 
		forall(
			member([X, Y, W, Z, Color1], L), 
			pintaNodo3([X, Y, W, Z, Color1])
		), 
		gfx_end((arbol,9000)).

%% Pintar enlaces dinamicamente.
dinaMicEnlace(Xv, Yv, LisSiguCoord) :- 
		listEnlacesDinamica(L), 
		diferConj(L, [enlace(Xv, Yv, LisSiguCoord)], L1), 
		retractall(listEnlacesDinamica(_)), 
		assert(listEnlacesDinamica([enlace(Xv, Yv, LisSiguCoord)|L1])).

pintaEnlaces([]) :- 
		true, !.
pintaEnlaces([enlace(Xv, Yv, LisSiguCoord)|L]) :- 
		pintaEnlaces(Xv, Yv, LisSiguCoord), 
		pintaEnlaces(L).
pintaEnlaces(X0, Y0, L) :- 
		gfx_begin((arbol,9000)), 
		forall(
			(member([Z, W, Nivel, Color, Tabl, Valorl, 10, Figura, padre(X0, Y0)],L), 
			write(Tabl)~>StrTbla), 
			(
				Xm is Z - 3, 
				Ym is W + 8, 
				(
					len(StrTbla, 1) -> 
					(
						valorLetra(Valors), 
						member([StrTbla, Valor], Valors),
						Cad = Valor, 
						Colr = raro1
					) ; (
						wtext((arbol,1030), Strr), 
						Strr=`Ocultar fórmulas` -> (
							Cad = StrTbla, Colr = blue
						) ; (
							Cad = ``, Colr = blue
						)
					)
				), 
				gfx( ( pen = verde -> polyline(X0, Y0, Z, W) ) ), 
				gfx( ( (fore = Colr, font = foo) -> text(Xm, Ym, Cad) ) )
			)
		),
		gfx_end((arbol,9000)).

% Variables vivas.
varVivas :- 
		forall(
			(
				integer_bound(1, N, 10), 
				M is N + 20
			), (
				wshow((arbol,N), 0), 
				wshow((arbol,M), 0)
			)
		), 
		copiar(Str), 
		cade_dato(Str, Form), 
		variables(Form, LisV), 
		sort(LisV, LisVarOrd), 
		forall(
			(
				integer_bound(1, N, 10), 
				valores(N, Valor), 
				member(Valor, LisVarOrd), 
				M is N + 20
			), (
				wshow((arbol,N), 1),
				wshow((arbol,M), 1)
			)
		).

resetVarVivas :- 
		forall(
			(
				integer_bound(1, N, 10), 
				M is N + 20
			), (
				wtext((arbol,M), `v`), 
				wshow((arbol,N), 1), 
				wshow((arbol,M), 0)
			)
		).

% Contar verdaderos y falsos.
cuentaVerdFalsos :- 
		copiar(Str), 
		cade_dato(Str, Form), 
		negaYposit(Form, Neg, Pos), 
		write(Neg)~>StrNeg, 
		write(Pos)~>StrPos, 
		wtext((arbol,8004), StrNeg), 
		wtext((arbol,8005), StrPos).

resetVerdFalsos :- 
		wtext((arbol,8004), `0`), 
		wtext((arbol,8005), `0`).

% Correr arbol.
correNodos(L, Nx, Ny, LiNuev) :- 
		findall(
			[XhN, YhN, Nivelh, Colorh, Tablh, Valorh, 10, Figurah, padre(XvN, YvN)], 
			(
				member([Xh, Yh, Nivelh, Colorh, Tablh, Valorh, 10, Figurah, padre(Xv, Yv)], L), 
				XhN is Xh + Nx, 
				YhN is Yh + Ny, 
				XvN is Xv + Nx, 
				YvN is Yv + Ny
			), 
			LiNuev
		).

correEnlaces(enlace(Xv, Yv, LisSiguCoord), Nx, Ny, enlace(XvN, YvN, LisSiguCoordNuev)) :- 
		XvN is Nx + Xv, 
		YvN is Ny + Yv, 
		correNodos(LisSiguCoord, Nx, Ny, LisSiguCoordNuev).

correrArbol(Nx, Ny) :- 
		listNodosDinamica(L), 
		listEnlacesDinamica(Enl), 
		correNodos(L, Nx, Ny, LiNuev), 
		findall(
			enlace(XvN, YvN, LisSiguCoordNuev), 
			(
				member(enlace(Xv, Yv, LisSiguCoord), Enl), 
				correEnlaces(enlace(Xv, Yv, LisSiguCoord), Nx, Ny, enlace(XvN, YvN, LisSiguCoordNuev))
			), 
			ListEnlaNueva
		), 
		retractall(listNodosDinamica(_)), 
		retractall(listEnlacesDinamica(_)), 
		assert(listNodosDinamica(LiNuev)), 
		assert(listEnlacesDinamica(ListEnlaNueva)).

% Cambiar valor de verdad con el mouse.
cambiaValorMouse([Xp, Yp, Nivelp, Colorp, Tablp, Valorp, 10, Figura, padre(Xv, Yv)]) :- 
		write(Tablp)~>TablpStr, 
		integer_bound(1, N, 10), 
		wtext((arbol,N), String), 
		String = TablpStr, 
		call(arbol((arbol,N), msg_button, _, _)), 
		redraw((arbol,9000)).

%% Ingresar la formula al arbol.
copiar(Cad) :- 
		Num is 8001, 
		wedttxt((arbol,Num), Str), 
		(
			Str = `` -> (
				wtext((arbol,Num), StrPr),
				separar_y_dato(StrPr, StrForm)
			) ; (
				separar_y_dato(Str, StrForm)
			)
		), 
		write(StrForm)~>String, 
		Cad = String, 
		wfocus((arbol,Num)).

% Pintar el arbol.
arbol( (arbol,9000), msg_paint, grafix, _ ) :- 
		gfx_begin((arbol,9000)), 
		pintaCANVAS2, 
		listNodosDinamica(L), 
		listEnlacesDinamica(Lenl3), 
		%actulizaEnlaces, actualizar, 
		nodosLis3(Lg), 
		pintaLis3(Lg), 
		pintarNodos2(L), 
		pintaEnlaces(Lenl3), 
		escribAcs(0, 0, _), 
		escribFormPrin, 
		gfx_end((arbol,9000)).

% Manejo de los menus.

%% Declaracion de la barra de menus.
menu_arbol :- 
		wmcreate( menu_arbol ),
		wmnuadd( menu_arbol, -1, `Salir`, 1000 ),
		
		wmcreate( menu1_arbol ),
		wmnuadd( menu1_arbol, -1, `Copiar`, 1010 ),
		wmnuadd( menu1_arbol, -1, `Pegar`, 1011 ),
		
		winapi( (user32,'CreateMenu'), [], 0, DialogMenuHandle ),

		wmnuadd( menu(DialogMenuHandle),-1, `Archivo`, menu_arbol ),
		wmnuadd( menu(DialogMenuHandle),-1, `Edición`, menu1_arbol ),

		wndhdl(arbol,H),
		winapi( (user32,'SetMenu'), [H,DialogMenuHandle ], 0, _ ),
		winapi( (user32,'DrawMenuBar'), [H], 0, _ ).

arbol( Win, msg_menu, ID, _ ) :- 
		menus_arbol(Item,ID), 
		arbol( Item, Win ).

add_menu( arbol, Name, Item ) :-
		winapi( (user32,'CreateMenu'), [], 0, DialogMenuHandle ),
		wmnuadd( menu(DialogMenuHandle), -1, Name, Item ).

%% Declaracion de los menus.
menus_arbol(`Salir`,1000).
menus_arbol(`Copiar`,1010).
menus_arbol(`Pegar`,1011).

%% Acciones de los elementos de los menus.
arbol(`Salir`, Win) :- 
		cambioVentanas(arbol, iniciar_evaluacion).

arbol(`Copiar`, Win) :- 
		Num is 8001, 
		wedttxt((arbol,Num), Str), 
		(
			not(Str = ``), 
			asserta(( portapapeles(Str) :- ! ))
		), 
		wfocus((arbol,Num)).

arbol(`Pegar`, Win) :- 
		Num is 8001, 
		portapapeles(Str), 
		wedttxt((arbol,Num), Str), 
		wfocus((arbol,Num)).

% Acciones de botones
arbol( (arbol,25000), msg_button,_, _ ) :- 
		cambioVentanas(arbol, iniciar_evaluacion).

% Reestablecer
reestablecerValores :- 
		resetVarVivas, 
		resetVerdFalsos.

reestablecerCanvas :- 
		retractall(listNodosDinamica(_)), 
		retractall(listEnlacesDinamica(_)), 
		assert(listNodosDinamica([])), 
		assert(listEnlacesDinamica([])), 
		redraw((arbol,9000)).
arbol( (arbol,1035), msg_button, _, _ ) :- 
		reestablecerCanvas.

%% Dibujar arbol.
arbol( (arbol,1001), msg_button, _, _ ) :- 
		wtext((arbol,10001), `No se puede.`), 
		reestablecerValores, 
		reestablecerCanvas, 
		copiar(Str), 
		prenderOpcion(2000), 
		separar_y_dato(Str, Tab),
		fbf2(Tab, _), 
		vfbf2(Tab, Valor), 
		varVivas, 
		cuentaVerdFalsos, 
		(Valor = `f` -> Color=roje ; Color = yellow), 
		dinamicNodos(nodo([630, 30, Nivel, Color, Tab, Valor, 10, ellipse, padre(80, 0)])), 
		retractall(listNodos2(_)), 
		assert(listNodos2([])), 
		actualizar, 
		retractall(nodosLis3(_)),
		assert(nodosLis3([])), 
		wtext((arbol,10001),`Sí se puede.`), 
		redraw((arbol,9000)).

%% Editar la formula.
arbol( (arbol,N), msg_button, _, _ ) :- 
		(integer_bound(1004, N, 1008) ; integer_bound(1013, N, 1025)), 
		Num is 8001, 
		wtext((arbol,N), Str), 
		wtext((arbol,10004), `Fórmula a analizar`), 
		wtext((arbol,10001), `Sintaxis`), 
		
		% Adicionar en la posicion del cursor 
		wedttxt( (arbol,Num), Str ).

%% Boton borrar uno (DEL).
arbol( (arbol,1011), msg_button, 0, _ ) :- 
		Linea is 8001, 
		
		% Borrar en la posicion del cursor
		wedtsel((arbol,Linea), Start, End), 
		Fin is End - 1, 
		wedttxt((arbol,Linea), ``), 
		wfocus((arbol,Linea)), 
		wedtsel((arbol,Linea), Start, Fin), 
		
		wtext((arbol,10004), `Fórmula a analizar`), 
		wtext((arbol,10001), `Sintaxis`), 
		reestablecerValores, 
		reestablecerCanvas, 
		!.

%% Boton borrar todos (AC).
arbol( (arbol,1012), msg_button, 0, _ ) :- 
		Linea is 8001, 
		wtext((arbol,Linea), ``), 
		wtext((arbol,10004), `Fórmula a analizar`), 
		wtext((arbol,10001), `Sintaxis`), 
		reestablecerValores, 
		reestablecerCanvas, 
		!.

%% Cambiar de verdadero a falso en los botones.
arbol( (arbol,N), msg_button, _, _ ) :- 
		(
			integer_bound(1, N, 10), 
			M is N + 20, 
			wtext((arbol,M), Valor), 
			( Valor = `v` -> wtext((arbol,M), `f`) ; wtext((arbol,M), `v`) ), 
			actualizar, 
			actulizaEnlaces
		), 
		redraw((arbol,9000)).

%% Scroll del arbol.
arbol( (arbol,1000), msg_button, _, _ ) :- 
		wtext((arbol,8000), StrNx), 
		cade_dato(StrNx, Nx), 
		NxIzq is -Nx, 
		correrArbol(NxIzq, 0), 
		redraw((arbol,9000)). 

arbol( (arbol,1031), msg_button, _, _ ) :- 
		wtext((arbol,8000), StrNx), 
		cade_dato(StrNx, Nx), 
		correrArbol(Nx, 0), 
		redraw((arbol,9000)). 

arbol( (arbol,1032), msg_button, _, _ ) :- 
		wtext((arbol,8000), StrNy), 
		cade_dato(StrNy, Ny), 
		NyIzq is -Ny, 
		correrArbol(0, NyIzq), 
		redraw((arbol,9000)). 

arbol( (arbol,1033), msg_button, _, _ ) :- 
		wtext((arbol,8000), StrNy), 
		cade_dato(StrNy, Ny), 
		correrArbol(0, Ny), 
		redraw((arbol,9000)). 

%% Sintonizar distancia en interfaz.
arbol( (arbol,1002), msg_button, _, _ ) :- 
		wtext((arbol,8003), StrNivel), 
		cade_dato(StrNivel, Nivel), 
		Nivel2 is Nivel - 20,
		write(Nivel2)~>StrNivel2, 
		wtext((arbol,8003), StrNivel2),
		redraw((arbol,9000)).

arbol( (arbol,1003), msg_button, _, _ ) :- 
		wtext((arbol,8003), StrNivel), 
		cade_dato(StrNivel, Nivel), 
		Nivel2 is Nivel + 20, 
		write(Nivel2)~>StrNivel2, 
		wtext((arbol,8003), StrNivel2), 
		redraw((arbol,9000)).

%% Mostrar subformulas.
arbol( (arbol,1030), msg_button, _, _ ) :- 
		wtext((arbol,1030), Str), 
		(
			Str = `Mostrar fórmulas` -> 
			wtext((arbol,1030), `Ocultar fórmulas`); 
			wtext((arbol,1030), `Mostrar fórmulas`)
		), 
		redraw((arbol,9000)).

% Escribir formula principal en en Canvas.
escribFormPrin :- 
		wtext((arbol,1030), Val), 
		(
			Val = `Ocultar fórmulas` -> 
			escriba(400, 0, ``); 
			(
				%copiar(StrFormPrin), 
				%wtext((arbol,10004), StrFormPrin), 
				!
			)
		).


/**NIvel para abrir las ramas de los respectivos Niveles**/

  nivel(N,X0,Nivel2):-Nivel2 is  ip(X0//2).    

 /***Juagada 1, ARBOL sintáctico, lógica proposicional  ***/

      jugada(1,For,Valor,Res):- vfbf2(For,Valor),fbf2( For,Res).

 jugaGfx([X0,Y0,TabIn,Valor], LisSiguCoord):-   valores(8003,Nivel), 
                                                jugada(1,TabIn,Valor,LisSigu),
                                       		length(LisSigu,N),N>0,Y1 is Y0+50, nivel(N,Nivel,Nivel2),
                                       		num(X0,N,Nivel2,LisNum), tbasEtq(LisNum,Y1,Nivel,padre(X0,Y0),LisSigu,LisSiguCoord).
                                      
  /** jugaGfx([X0,Y0,TabIn,Valor], LisSiguCoord):-valores(8003,Nivel), jugada(1,TabIn,Valor,LisSigu),length(LisSigu,N),N=0,
                                               LisSiguCoord=[].
   **/
 
/****Dada la lista de hijos determina la distancia equidistante de todos los nos hijos**/
 num(X0,N,Nivel,L):-X1 is X0-Nivel,X2 is X0+Nivel,L=[X1,X2].

/*** La lista de tableros rasos, se visten como nodos **/
 tbasEtq( L,Y1,Nivel,padre(X0,Y0),[],[]):-!.
 tbasEtq([Num|LisNum],Y1,Nivel,padre(X0,Y0), [Ts|RsTab],[[Num,Y1,Nivel,Color,Ts,Valor,10,Figura,padre(X0,Y0)]|Rest]):- 
                                                vfbf2(Ts,Valor),teorema(Ts,Resp),contradiccion(Ts,Resp2),
                                                                                                                                      
                                                    (len(Ts,1)->Figura=rectangle;Figura=ellipse),
                                                     (Valor=`f`->(Resp2=1->Color=negro;Color=roje);(Resp=0->Color=yellow;Color=green)),
                                                      tbasEtq(LisNum,Y1,Nivel,padre(X0,Y0),RsTab,Rest).


/**Agregar Nodos dinámicamente   **/

dinamicNodos(nodo(Nodo)):- listNodosDinamica(L),diferConj(L,[Nodo],L1), 
                             retractall(listNodosDinamica(_)),
                            append([Nodo],L1,L2),assert(listNodosDinamica(L2)) .
                          

dinamicListNodos([]):-true,!.
dinamicListNodos([Nodo|LisNodos]):-dinamicNodos(nodo(Nodo)),dinamicListNodos(LisNodos),redraw((arbol,9000) ).

/**Borrar Hijos**/
 /**Diferencia de Conjuntos**/

 %%%% diferConj(A,B,C):-findall(X, (member(X,A),not(member(X,B))),C).

 diferConj([],B,[]):-!.
 diferConj([X|A],B,C):-member(X,B), diferConj(A,B,C),!.
 diferConj([X|A],B,[X|C]):-diferConj(A,B,C),!.

borrarHijos([Xv,Yv,Nivel,Color,Tabl,Valor,10,Figura,padre(Xs,Ys)],HijosBorrados):-

                                                    listNodosDinamica(Lnod),listEnlacesDinamica(Len),
                                                     member([Xv,Yv,Nivel,Color,Tabl,Valor,10,Figura,padre(Xs,Ys)],Lnod),
            findall([Xh,Yh,Nivelh,Colorh,Tablh,Valorh,10,Figurah,padre(Xv,Yv)],
            member([Xh,Yh,Nivelh,Colorh,Tablh,Valorh,10,Figurah,padre(Xv,Yv)],Lnod),HijosBorrados),
           (  ( (member(enlace(Xv,Yv,HH),Len);true),removeall(enlace(Xv,Yv,HH),Len,Lenl2)  )),
            diferConj(Lnod,HijosBorrados,Lnod1),%removeall(enlace(Xv,Yv,HH),Len,Lenl2),
            retractall(listNodosDinamica(_)),assert(listNodosDinamica(Lnod1)),
            retractall(listEnlacesDinamica(_)),assert(listEnlacesDinamica(Lenl2)),!.
           
          
 



 
 % borrarHijos([Xv,Yv,Nivel,Color,Tabl,Valor,10,Figura,padre(Xs,Ys)],L):-listEnlacesDinamica(Lenl2),  listNodosDinamica(L),!.
                                                                        
  borraTodos(L):-forall(member(Nod,L),borrarHijos(Nod,Hijos)).


/***DE ACUERDO AL VALOR DE LAS LETRAS ACTUALIZA EL VALOR DE LA FORMULA en EL NODO GRAFIX ***/
 actualizaFbf([],[]):-!.
 actualizaFbf([[X,Y,Z,Color,FbF,Valor,10,Figura,padre(X0,Y0)]|Res],[[X,Y,Z,ColorA,FbF,ValorA,10,Figura,padre(X0,Y0)]|ResAc]):-teorema(FbF,Resp),contradiccion(FbF,Resp2),
                                vfbf2( FbF,ValorA),(ValorA=`f`->(Resp2=1->ColorA=negro;ColorA=red);(Resp=1->ColorA=green;ColorA=yellow)),actualizaFbf(Res,ResAc).

  actualizar:-listNodosDinamica(LisNodos), actualizaFbf(LisNodos,LisNodos2), retractall(listNodosDinamica(_)),assert(listNodosDinamica(LisNodos2)).

/*** ACTUALIZA ENLACES DE ACUERDO AL VALOR DE LAS LETRAS ACTUALIZA EL VALOR DE LA FORMULA en EL NODO GRAFIX ***/


  actEnlace(enlace(X0,Y0,[]),enlace(X0,Y0,[])):-!.
  actEnlace(enlace(X0,Y0,[[X,Y,Z,_,Fbf,_,10,Figura,padre(X0,Y0)]|Res]),enlace(X0,Y0,[[X,Y,Z,ColorA,Fbf,ValorA,10,Figura,padre(X0,Y0)]|AcRes])):-
                                                         listNodosDinamica(LisNodos),
							 member([X,Y,Z,ColorA,Fbf,ValorA,10,Figura,padre(X0,Y0)],LisNodos),
							 actEnlace(enlace(X0,Y0,Res),enlace(X0,Y0,AcRes)).

  actuLisEnlaces([],[]):-!.
  actuLisEnlaces([X|Len],[Y|ResEn]):- actEnlace(X,Y),actuLisEnlaces(Len,ResEn).

 actulizaEnlaces:- listEnlacesDinamica(LenEnlaces),actuLisEnlaces(LenEnlaces,LenEnlacesAct),retractall(listEnlacesDinamica(_)),
                                                      assert( listEnlacesDinamica(LenEnlacesAct)). 
/**Padres y en general ascendientes*********/
/**********+ dado un nodo el preicado es verda cuando Padre es el Nodo padre del Nodo dado***/ 
 
 padreNodo([Xi,Yi,Niveli,Colori,Tabli,Valori,10,Figurai,padre(X0,Y0)],[X0,Y0,Nivelp,Colorp,Tablp,Valorp,10,Figurap,padre(Xp,Yp)]):-
                                                      listNodosDinamica(L), listEnlacesDinamica(LisEnlaces),
                                                      member(enlace(X0,Y0,LisSiguCoord),LisEnlaces),
                                                      member([Xi,Yi,Niveli,Colori,Tabli,Valori,10,Figurai,padre(X0,Y0)],LisSiguCoord),
                                                      member([X0,Y0,Nivelp,Colorp,Tablp,Valorp,10,Figurap,padre(Xp,Yp)],L).
                                                

/*****+Dado un nodo Nodo,el predicado es verdadero cuando Ascs, es la lista de sus ascendetes..incluyendo la raíz **/
  ascende(Nodo,[P1|Ascs]):-padreNodo(Nodo,P1),ascende(P1,Ascs),!.
  ascende(_,[]):-true,!.


/******VECINDADDD..................*********/
 vecindad(X,Y,Xv,Yv,Dist):- Xmax is X+Dist,Xmin is X-Dist,Ymax is Y+Dist,Ymin is Y-Dist,
                            integer_bound(Xmin,Xv,Xmax),integer_bound(Ymin,Yv,Ymax).

/*** Checkbox  prendido **/
  pren(N):-integer_bound(2000,N,2005), wbtnsel( (arbol,N), State ),State=1,!.


/** REFRESCAR*/   
redraw((arbol,N) ) :-
wsize( (arbol,N), _, _, Width, Depth ), 
gfx_window_redraw( (arbol,N), 0, 0, Width, Depth ).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% COLORES PARA LAS VARIABLES ROJO O AMARILLO%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

/***Paleta de colores ***/ 
  

arbol((arbol,N),msg_paint,grafix, Result ):- 
%integer_bound(21,N,30),gfx_begin((arbol,N)),  

                            forall( ( integer_bound(21,N,30),wtext( (arbol,N),Valor)),
                            ((Valor=`f`->confArbol(red, N);
                             confArbol(yellow, N) ),  redraw((arbol,N))
                            )),
                          gfx_end((arbol,N)).


/*** AUMENTA Y DISMINUY LA APERTURA DE LOS NODOS */

aumenta:-wtext((arbol,8003),Str),cade_dato(Str,Dat),Dat1 is Dat+30,write(Dat1)~>Str1,wtext((arbol,8003),Str1).
disminuye:-wtext((arbol,8003),Str),cade_dato(Str,Dat),Dat1 is Dat-30,write(Dat1)~>Str1,wtext((arbol,8003),Str1).

   /*** ABRIR NODOS **/

  arbol( (arbol,9000), msg_leftdown, (X,Y), Result ):- pren(2000),  listNodosDinamica(L), listEnlacesDinamica(L2),
                                                
                                                  
                                                  vecindad(X,Y,Xv,Yv,8), member([Xv,Yv,Nivel,Color,Tabl,Valor,10,Figura,padre(X0,Y0)],L) ,
                                               (   Figura=ellipse->
                                                 (  aumenta, ( borrarHijos([Xv,Yv,Nivel,Color,Tabl,Valor,10,Figura,padre(X0,Y0)],Hijos); true),
                                                    jugaGfx([Xv,Yv,Tabl,Valor], LisSiguCoord),  pintaEnlaces(Xv,Yv,LisSiguCoord),
                                                    dinaMicEnlace(Xv,Yv,LisSiguCoord),
                                                    pintarNodos2(LisSiguCoord),dinamicListNodos(LisSiguCoord)
                                                  );
                                               cambiaValorMouse([Xv,Yv,Nivel,Color,Tabl,Valor,10,Figura,padre(X0,Y0)]),redraw((arbol,9000) ) 
                                               ).
						 
                                               
                                                 
  arbol( (arbol,9000), msg_rightdown, (X,Y), Result ):-pren(2000), listNodosDinamica(L), listEnlacesDinamica(L2),disminuye,
                                                  
                                                  vecindad(X,Y,Xv,Yv,8), member([Xv,Yv,Nivel,Color,Tabl,Valor,10,Figura,padre(X0,Y0)],L),
                                                  ( borrarHijos([Xv,Yv,Nivel,Color,Tabl,Valor,10,Figura,padre(X0,Y0)],Hijos); true),
                                                  jugaGfx([Xv,Yv,Tabl,Valor], LisSiguCoord),  
                                                   pintaEnlaces(Xv,Yv,LisSiguCoord),dinaMicEnlace(Xv,Yv,LisSiguCoord),
                                                   pintarNodos2(LisSiguCoord),dinamicListNodos(LisSiguCoord).

                                               
%%%%%%%%%%%%%%% BORRA NODOS ENLACES, HIJOS ,PADRE ETC%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

/****Borra El nodo con sus enlaces SIN borrar susHijos ***/
borraNodosEnalcesHijos([Xp,Yp,Nivelp,Colorp,Tablp,Valorp,10,Figurap,padre(Xv,Yv)]):-listEnlacesDinamica(LiEn),
   
                                                        member(enlace(Xp,Yp,LisNodos),LiEn), removeall(enlace(Xp,Yp,LisNodos),LiEn,LiEn2),
                                                       
                                                        borraNodosDentro([[Xp,Yp,Nivelp,Colorp,Tablp,Valorp,10,Figurap,padre(Xv,Yv)]]),
                                                      retractall(listEnlacesDinamica(_)),assert(listEnlacesDinamica(LiEn2)).   
 

   /** Puntos sobre la recta****/

 vecindadR(X,Y,Xv,Yv,Dist):- Xmax is X+Dist,Xmin is X-Dist,Ymax is Y+Dist,Ymin is Y-Dist,
                            integer_bound(Xmin,Xv,Xmax),integer_bound(Ymin,Yv,Ymax).

  puntoRecta(Xv,Yv,[X1,Y1,Z1,W1]):-   vecindadR(Xv,Yv,X,Y,2),
                                   (     ( X1=Z1,Y1=W1)->(X=Z1,Y=W1); 
                                        ( M is (Y1-W1)/(X1-Z1),  Y =:= ip( M*(X-X1)+Y1) )
                                   ).
/*** Puntos de la Recta Enlace ***/
  


puntoEnlace(X,Y,enlace(X1,Y1,LisNodos),LisNodosNueva):-
                               listEnlacesDinamica(Enl),
                               member(enlace(X1,Y1,LisNodos),Enl), 
                               member([X0,Y0,Nivelp,Colorp,Tablp,Valorp,10,Figurap,padre(X1,Y1)],LisNodos),
                               removeall([X0,Y0,Nivelp,Colorp,Tablp,Valorp,10,Figurap,padre(X1,Y1)],LisNodos,LisNodosNueva),
                                         (puntoRecta(X,Y,[X0,Y0,X1,Y1])).                                                                
       


borraEnlacesDentro(Dentro):-listEnlacesDinamica(Enl),listNodosDinamica(L),
                            findall(enlace(Xp,Yp,LisSiguCoord),
                                          (member([Xp,Yp,Nivelp,Colorp,Tablp,Valorp,10,Figurap,padre(Xv,Yv)],Dentro),
                                           member(enlace(Xp,Yp,LisSiguCoord),Enl)  ),LisEnDec),
                           diferConj(Enl,LisEnDec,LisEnFuera),
                           retractall(listEnlacesDinamica(_)),assert(listEnlacesDinamica(LisEnFuera)).     
         

borraNodosDentro(Dentro):-listNodosDinamica(L),  diferConj(L,Dentro,LisNodFuera), retractall(listNodosDinamica(_)),
                           assert(listNodosDinamica(LisNodFuera)).

borraEnlaceNodoDado([Xp,Yp,Nivelp,Colorp,Tablp,Valorp,10,Figurap,padre(Xv,Yv)]):- listEnlacesDinamica(LiEn),
                                                        member(enlace(Xv,Yv,LisNodos),LiEn),
                                                        removeall(enlace(Xv,Yv,LisNodos),LiEn,LiEn2),
                                                        removeall([Xp,Yp,Nivelp,Colorp,Tablp,Valorp,10,Figurap,padre(Xv,Yv)],LisNodos,LisNodosNuev),
                                                        append([enlace(Xv,Yv,LisNodosNuev)],LiEn2,LiEnNueva),
                                                        retractall(listEnlacesDinamica(_)),assert(listEnlacesDinamica(LiEnNueva)).     

borrarEnlaceNodo(NodosDentro):-forall(member(Nodo,NodosDentro),borraEnlaceNodoDado(Nodo)),!.

    
/*** MOVER NODOS CON EL BOTON DERECHO???   ***/

    arbol( (arbol,9000), msg_leftdown, (X,Y), Result ):- pren(2001),  retractall(nodoTemp(_ )),retractall(enlaceTempo(_,_,_ )),
                                                   listNodosDinamica(L),listEnlacesDinamica(Lenl),vecindad(X,Y,Xv,Yv,8), 
                                                   member([Xv,Yv,Nivel,Color,Tabl,Valor,10,Figura,padre(X0,Y0)],L),
                                                
                                                                                             
                                                  ( ( borrarHijos([Xv,Yv,Nivel,Color,Tabl,Valor,10,Figura,padre(X0,Y0)],Hijos),redraw((arbol,9000) ))),
                                                  
                                                 listNodosDinamica(L2),listEnlacesDinamica(Lenl3),
                                                 diferConj(L2,[[Xv,Yv,Nivel,Color,Tabl,Valor,10,Figura,padre(X0,Y0)]],Lact),
					         retractall(listNodosDinamica(_)),assert(listNodosDinamica(Lact)),

                                                 diferConj(Lenl3,[enlace(Xv,Yv,LisSiguCoord0),enlace(X0,Y0,LisSiguCoord2)],Lenl4),
                                               
                                                 diferConj(LisSiguCoord2,[[Xv,Yv,Nivel,Color,Tabl,Valor,10,Figura,padre(X0,Y0)]],LisSiguCoord3),
                                                 assert(nodoTemp([Xv,Yv,Nivel,Color,Tabl,Valor,10,Figura,padre(X0,Y0)] )),
                                                 assert(enlaceTempo(X0,Y0,LisSiguCoord3)),!,
                                                 retractall( listEnlacesDinamica(_)),assert( listEnlacesDinamica(Lenl4)),!,
                             
                                                 
                                                  redraw((arbol,9000) ) .

/*** MOVER NODOS CON EL BOTON DERECHO???   ***/						 
  arbol( (arbol,9000), msg_leftup, (X,Y), Result ):- pren(2001),
                                                listEnlacesDinamica(L2),
                                                 vecindad(X,Y,Xw,Yw,5),
                                                 nodoTemp([Xv,Yv,Nivel,Color,Tabl,Valor,10,Figura,padre(X0,Y0)] ), 
                                                 enlaceTempo(X0,Y0,LisSiguCoord3), retractall(nodoTemp(_)),retractall(enlaceTempo(_,_,_ )),
                                                
                                                  append([[Xw,Yw,Nivel,Color,Tabl,Valor,10,Figura,padre(X0,Y0)]],LisSiguCoord3,NodosHijos3),
                                                  dinamicNodos(nodo([Xw,Yw,Nivel,Color,Tabl,Valor,10,Figura,padre(X0,Y0)])),!,
                                                  diferConj(L2,[enlace(X0,Y0,NodosHijos3)],L3),
                                                  append(L3,[enlace(X0,Y0,NodosHijos3)],L4),

                                                 retractall(listEnlacesDinamica(_)),assert(listEnlacesDinamica(L4)),
                                                                                                 
                                                 
                                                  
                                                  redraw((arbol,9000) ).
		  				 
  arbol( (arbol,9000), msg_leftdown, (X,Y), Result ):- pren(2002),wtext((arbol,8003),`1`),
                                                retractall(inicio(_,_)),assert(inicio(X,Y)),redraw((arbol,9000) ),!.

 arbol( (arbol,9000), msg_mousemove, (W,Z), Res ):- pren(2002),wtext((arbol,8003),S),S=`1`,inicio(X,Y),
                                              pintaNodo3([X,Y,W,Z,blue]),!.
 
 arbol( (arbol,9000), msg_leftup, (W,Z), Result ):- pren(2002),wtext((arbol,8003),`2`), inicio(X,Y), listEnlacesDinamica(Lenl),
                                             
                                               dentro([X,Y,W,Z,white],LisDentro),
                                               borraNodosDentro(LisDentro),borrarEnlaceNodo(LisDentro),
                                               redraw((arbol,9000) ).



   

arbol( (arbol,9000), msg_leftdown, (X,Y), Result ):-   pren(2003), listNodosDinamica(L), vecindad(X,Y,Xv,Yv,7), 

                                                 member([Xv,Yv,Nivel,Color,Tabl,Valor,10,Figura,padre(X0,Y0)],L),write(Tabl)~>StrTabl,
                                                 retractall(trayec(_)),  
                                                 ascende( [Xv,Yv,Nivel,Color,Tabl,Valor,10,Figura,padre(X0,Y0)],Ascs),
                                                         assert(trayec(Ascs)),
                                                 escribAcs(0,0,[[Xv,Yv,Nivel,Color,Tabl,Valor,10,Figura,padre(X0,Y0)]|Ascs]).
                                           

arbol( (arbol,9000), msg_leftdown, (X,Y), Result ):- pren(2004),  listNodosDinamica(L),vecindad(X,Y,Xv,Yv,7),  
                                                 member([Xv,Yv,Nivel,Color,Tabl,Valor,10,Figura,padre(X0,Y0)],L),
                                                  
 							borraNodosDentro([[Xv,Yv,Nivel,Color,Tabl,Valor,10,Figura,padre(X0,Y0)]]),redraw((arbol,9000) ),

                                                 borraEnlaceNodoDado([Xv,Yv,Nivel,Color,Tabl,Valor,10,Figura,padre(X0,Y0)]),redraw((arbol,9000) ).

arbol( (arbol,9000), msg_leftdown, (Xv,Yv), Result ):-  pren(2005),  listEnlacesDinamica(Enl),redraw((arbol,9000) ),
                                               
                                                 puntoEnlace(Xv,Yv,enlace(X0,Y0,LisNodos),LisNodosNueva), 
                                                 diferConj(Enl,[enlace(X0,Y0,LisNodos)],Enl2),
                                                 retractall(listEnlacesDinamica(_)),assert(listEnlacesDinamica([enlace(X0,Y0,LisNodosNueva)|Enl2])),!,
                                                 redraw((arbol,9000) ).

                                                  
arbol( (arbol,9000), msg_leftup, (X,Y), Result ):- pren(2003),redraw((arbol,9000) ).

          
                                                
/**********NODOS que estan dentro de un recuadro**/

  dentro([X0,Y0,Z,W,white],LisDentro):-listNodosDinamica(L),
    findall([Xi,Yi,Niveli,Colori,Tabli,Valori,10,Figura,padre(Xf,Yf)],      
  
            ( member([Xi,Yi,Niveli,Colori,Tabli,Valori,10,Figura,padre(Xf,Yf)],L),
             ( (Xi>X0,Xi<Z,Yi<Y0,Yi>W );
               (Xi<X0,Xi>Z,Yi>Y0,Yi<W );
               (Xi>X0,Xi<Z,Yi>Y0,Yi<W );
               (Xi<X0,Xi>Z,Yi<Y0,Yi>W )
             )
            ),
           LisDentro).
              
/**+************** Escribe la cadena correspondiente al jugada (tablero) par presentar la en grafix  ***********/

  escriba(Xv,Yv,StrTabl):-         gfx_begin( (arbol,9000) ), 
                                              gfx( ( ( fore=leaf,font=foo) -> text(Xv,Yv,StrTabl)) ) ,   
                                        gfx_end( (arbol,9000) ).  

  
  escribaLista(Xv,Yv,[]):-true,!.
  escribaLista(Xv,Yv,[[X,Y,Nivel,Color,Tabl,Valor,10,ellipse,padre(X0,Y0)]|L]):- 
                          write(Tabl)~>StrTabl,
                         escriba(Xv,Yv,StrTabl),Y2 is Yv+33,escribaLista(Xv,Y2,L).
  escribAcs(Xv,Yv,L):-reverse(L,M),escribaLista(Xv,Yv,M).


escriba([X]):-write(X),nl,!.
  escriba([X|List]):-write(X),nl,escriba(List).


 /** CON STRING   ***/

   juagStr(CadIn,LisCadSig):-string_tokenise( CadIn, `,`, LisCad).



