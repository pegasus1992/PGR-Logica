% Definiendo operadores.
opera :- 
	op(500, yfx, ≡),
	op(490, yfx, →),
	op(480, yfx, ∧),
	op(480, yfx, ∨),
	op(470, fy, ¬).

:- opera.

%% Iniciar y terminar programa
fverd(Pred) :- Pred, abort.
abortar :- repeat, flag(1), wait(0), fail.

% Cerrar ventana.
cerrando(Win) :- 
		wclose(Win), 
		%halt, 
		!.
cambioVentanas(Win1, Win2) :- 
		wclose(Win1), 
		Win2.
cerrarTodo :- halt.

% Definiendo logica de operadores.
implccn(P,Q,V) :- P = `v`, Q = `f` -> V = `f` ; V = `v`.
dsyncn(P,Q,V) :- P = `f`, Q = `f` -> V = `f` ; V = `v`.
cnjncn(P,Q,V) :- P = `v`, Q = `v` -> V = `v` ; V = `f`.
eqvlnca(P,Q,V) :- P = Q -> V = `v` ; V = `f`.
ngcn(P,V) :- P = `v` -> V = `f` ; V = `v`.

% Portapapeles
:- dynamic(portapapeles/3).

% Convertir cadena a dato:
% cade_dato(`2+3`, D), write(D).
cade_dato(Str, Dat) :- 
		string_chars(Str, Ch),
		append(Ch, [46,32], T),
		string_chars(Str2, T),
		read(Dat) <~ Str2.

% Convertir dato a cadena:
% write(ahasjdhajsdk) ~> R.

% Obtener lista de unos.
genUnos(0,[]) :- !.
genUnos(N, [1|Xs]) :- M is N - 1 , genUnos(M, Xs).

% Convierte una cadena en una lista de los caracteres que la componen.
str_to_list(Str, Ls) :- 
			Str = `` -> Ls = [] ; (
				len(Str,N), 
				M is N - 1, 
				genUnos(M, Us), 
				cat(Ls, Str, Us)
			).

% Agrega espacios a lado y lado de los conectores.
espacios_conectores([ ], [ ]) :- !.
espacios_conectores([C|Ls], [S|Res]) :- 
			member(C,[`≡`,`→`,`∧`,`∨`,`¬`, `(`, `)`]),
			cat([` `,C,` `], S, _),
			espacios_conectores(Ls, Res).
espacios_conectores([C|Ls], [C|Res]) :- 
			espacios_conectores(Ls, Res),!.

% Convierte cadena a lista, agrega espacios y convierte lista a cadena.
espaciar_cadena(Str, StrSep) :- 
			str_to_list(Str, Ls),
			espacios_conectores(Ls, Res),
			(Res = [] -> StrSep = `` ; cat(Res, StrSep, _)).

% Separa la cadena y la convierte a dato.
separar_y_dato(Str, Dato) :- 
		espaciar_cadena(Str, StrSep),
		cade_dato(StrSep,Dato).

% Quitar espacios a lado y lado de los conectores.
quitar_espacios_conectores([ ], [ ]) :- !.
quitar_espacios_conectores([C|Ls], [S|Res]) :- 
			member(C, [` `]),
			cat([``], S, _), 
			quitar_espacios_conectores(Ls, Res).
quitar_espacios_conectores([C|Ls], [C|Res]) :- 
			quitar_espacios_conectores(Ls, Res), !.

% Convierte la cadena a lista, quita espacios y convierte lista a cadena.
quitar_espacios_cadena(Str, StrJoin) :- 
			str_to_list(Str, Ls),
			quitar_espacios_conectores(Ls, Res),
			(Res = [] -> StrJoin= `` ; cat(Res, StrJoin, _)).

% Convierte un dato a cadena y le quita espacios.
dato_cadena_sin_espacios(Str, String) :- 
			write(Str)~>TxtStr,
			quitar_espacios_cadena(TxtStr, String).

% Quita el ultimo elemento de una lista.
remove_last(L, LR) :- append(LR, [_], L).

% Convierte cadena a lista, quita ultimo elemento y convierte lista a cadena.
quitar_ultimo_cadena(Str, Resp) :- 
			str_to_list(Str, R), 
			remove_last(R, L), 
			(L = [] -> Resp = `` ; cat(L, Resp, _)).

% Adicionar cadena al final de otra.
adicionar_cadena_final(Form, Str, Resp) :- 
			str_to_list(Form, List),
			str_to_list(Str, L),
			append(List, L, R),
			(R = [] -> Resp = `` ; cat(R, Resp, _)).

% Seleccionar un elemento aleatorio de una lista.
randomNum([], []) :- !. 
randomNum([N|Ns], [R|Rs]) :- 
		R is int(rand(N)),
		randomNum(Ns, Rs). 

randomElem(Ls, Elem) :- 
		length(Ls, N), 
		D is int(rand(N)) + 1, 
		member(Elem, Ls, D).

% Eliminar un elemento de la lista.
%% ?- delElem(c,[a,b,c,d,e],NewList).
%% NewList = [a,b,d,e]
delElem(X, [X|Tail], Tail).
delElem(X, [Y|Tail], [Y|Tail1]) :- 
		delElem(X, Tail, Tail1).

% Desorganiza aleatoriamente una lista
%% ?- desorganizarLista([a,b,c,d,e,f],L).
%% L = [a,e,f,b,d,c]
desorganizarLista([], []).
desorganizarLista(Lista, [Head|Random]) :- 
		randomElem(Lista, Head), 
		delElem(Head, Lista, Tail), 
		desorganizarLista(Tail, Random), 
		!.

% integer_bound.
inte(X, X, [X]).
inte(X, Y, [Z|Rs]) :- X < Y, Z is X + 1, inte(Z, Y, Rs).
integer_bound(X, Y, Z) :- inte(X - 1, Z, Ls), member(Y, Ls).

% Reemplazar en cadena.
string_replace_all( OldString, From, To, NewString ) :-
   (  repeat,
      (  find( From, 2, Find ),
         Find = ``,
         !
      ;  write( To ),
         fail
      )
   ) <~ OldString ~> NewString.

string_append( Left, Right, Whole ) :-
   (  type( Whole, 4 )
   -> len( Whole, Length ),
      repeat( 0, Length, Pos ),
      cat( List, Whole, [Pos] ),
      List = [Left,Right]
   ;  cat( [Left,Right], Whole, _ )
   ).

string_append( Left, Right, Whole, Pos ) :-
   (  type( Whole, 4 )
   -> len( Whole, Length ),
      repeat( 0, Length, Pos ),
      cat( List, Whole, [Pos] ),
      List = [Left,Right]
   ;  cat( [Left,Right], Whole, List ),
      List = [Pos]
   ).

% Definir objetos.
create_objects :-
	gfx_fore_create( leaf,     0,     0,    0 ),
	gfx_fore_create( cle,    255,   255,  255 ),
	gfx_fore_create( rojo,   255,     0,    0 ),
	gfx_fore_create( ver,      0,   255,    0 ),     
	gfx_fore_create( mag,      0,   255,   64 ),
	gfx_fore_create( raro1,  325,    10,    0 ),
	gfx_fore_create( blue,     0,     0,  255 ),     
	gfx_fore_create( cyan,     0,   255,  255 ).

% Definir fuentes.
crea_fuentes :- 
	gfx_font_create( foo,   times, 19, bold ), 
	gfx_font_create( fee,   arial, 20, bold ),
	gfx_font_create( times, times, 20, bold ).  

% Definir pen.
crea_pen :- 
	gfx_pen_create( raro,     210,   20,  200,      solid ), 
	gfx_pen_create( white,    255,  255,  255,      solid ), 
	gfx_pen_create( blue,       0,    0,  255,      solid ), 
	gfx_pen_create( black,      0,    0,    0,      solid ),
	gfx_pen_create( rojo,     255,    0,    0,      solid ),
	gfx_pen_create( verde,      0,  155,    0,      solid ),
	gfx_pen_create( red,      255,    0,  255, dashdotdot ).

% Definir colores.
define_brush_colours :-
	gfx_brush_create( fifo,           10, 225, 296, solid ),
	gfx_brush_create( black,           0,   0,   0, solid ),
	gfx_brush_create( grey,          128, 128, 128, solid ),
	gfx_brush_create( white,         255, 255, 255, solid ),
	gfx_brush_create( red,           255,   0,   0, solid ),
	gfx_brush_create( roje,          255,  40,  20, solid ),
	gfx_brush_create( green,           0, 255,   0, solid ),
	gfx_brush_create( yellow,        255, 255,   0, solid ),
	gfx_brush_create( blue,            0, 120, 255, solid ),
	gfx_brush_create( cyan,            0, 255, 255, solid ),   
	gfx_brush_create( purple,        128,   0, 255, solid ),
	gfx_brush_create( magenta,       128, 000, 228, solid ),
	gfx_brush_create( negro,         128, 000,  82, solid ),
	gfx_brush_create( brown,         128, 128, 000, solid ),
	gfx_brush_create( light_grey,    192, 192, 192, solid ),
	gfx_brush_create( light_blue,    000, 000, 255, solid ),
	gfx_brush_create( light_green,   000, 255, 000, solid ),
	gfx_brush_create( light_cyan,    000, 255, 255, solid ),
	gfx_brush_create( light_red,     255, 000, 000, solid ),
	gfx_brush_create( light_magenta, 255, 000, 255, solid ).

% Cargar imagenes.
load_images(Name, File) :- 
		absolute_file_name(File, Img), 
		gfx_bitmap_load(Name, Img).

% Funciones para formulas de premisas y conclusion.
maxL(P, N) :- 
		write(P)~>StrP,
		len(StrP, Long),
		Long < N, !.
 
permutacion([], []).
permutacion(L, Lp) :- 
		member(X, L), 
		remove(X, L, L1), 
		permutacion(L1, L2), 
		Lp = [X|L2].

pegarY([], P, P) :- !.
pegarY([P1|Res], Ps, Pes):- 
		pegarY(Res, Ps ∧ P1, Pes).
pegarYY([X|Res], Ps) :- 
		pegarY(Res, X, Ps), !.

teorema(Form, Res) :- 
		tabla_de_Verdad(Form, T),
		findall([Valor, Vect], (
				member(Vect, T),
				vfbfV2(Form, Vect, Valor),
				Valor = `f`
			), List
		), (List = [] -> Res = 1 ; Res = 0), !.

tabla_de_Verdad(Form, T) :- 
		variables(Form, LisVarIn), !,
		sort(LisVarIn, LisVar), 
		length(LisVar, _), 
		findall(Vect, (
				bin_a_f_v(LisVar, Vect)
			), T
		), !.

variables(A, [A]) :- 
		len( A, 1 ),
		member( A, [a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z] ),
		!.
variables(For1 ∧ For2, Lis) :- 
		variables(For1, Lis1),
		variables(For2, Lis2),
		append(Lis1, Lis2, Lis), !.
variables(For1 ∨ For2, Lis) :- 
		variables(For1, Lis1),
		variables(For2, Lis2),
		append(Lis1, Lis2, Lis), !.
variables(For1 → For2, Lis) :- 
		variables(For1, Lis1),
		variables(For2, Lis2),
		append(Lis1, Lis2, Lis), !.
variables(For1 ≡ For2, Lis) :- 
		variables(For1, Lis1),
		variables(For2, Lis2),
		append(Lis1, Lis2, Lis), !.
variables(¬ For, L) :- 
		variables(For, L), !.
variables(X, LisV) :- 
		write(X)~>X2,
		cat(L, X2, [1,1]),
		L = [`¬`, S, SS],
		name(S, H),
		not(H = 32),
		cat([S, SS], ResStr, _),
		separar_y_dato(ResStr, Res),
		variables(Res, LisV), !.

valorVerdFalso(v, `v`) :- !.
valorVerdFalso(f, `f`) :- !.

vfbfV2(A, Vect, Valor) :- 
		len(A, 1), 
		(
			(A = v ; A = f) -> 
			valorVerdFalso(A, Valor); 
			member((A, Valor), Vect)
		), !.
vfbfV2(A ∧ B, Vect, Valor) :- 
		vfbfV2(A, Vect, V1),
		vfbfV2(B, Vect, V2),
		cnjncn(V1, V2, Valor), !.
vfbfV2(A ∨ B, Vect, Valor) :- 
		vfbfV2(A, Vect, V1),
		vfbfV2(B, Vect, V2),
		dsyncn(V1, V2, Valor), !.
vfbfV2(A → B, Vect, Valor) :- 
		vfbfV2(A, Vect, V1),
		vfbfV2(B, Vect, V2) ,
		implccn(V1, V2, Valor), !.
vfbfV2(A ≡ B, Vect, Valor) :- 
		vfbfV2(A, Vect, V1),
		vfbfV2(B, Vect, V2),
		eqvlnca(V1, V2, Valor), !.
vfbfV2(¬ A, Vect, Valor) :- 
		vfbfV2(A, Vect, V1),
		ngcn(V1, Valor), !.
vfbfV2(X, Vect, Valor) :- 
		write(X)~>X2,
		cat(L, X2, [1, 1]),
		L = [`¬`, S, SS],
		name(S, H),
		not(H = 32),
		cat([S, SS], ResStr, _),
		separar_y_dato(ResStr, Res),
		vfbfV2(Res, Vect, Valor1),
		ngcn(Valor1, Valor), !.

bin_a_f_v([], []) :- !.
bin_a_f_v([X|L], [(X,Y)|M]) :- 
		(Y = `v` ; Y = `f`),
		bin_a_f_v(L, M).

% Funciones para el arbol sintactico.
:- dynamic[fbf2/2, vfbf2/2].

fbf2(A, []) :- 
		len(A, 1), 
		!.
fbf2(A, [A]) :- 
		len( A, 1 ),
		member( A, [a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z] ), 
		!.
fbf2(A ∧ B, [A, B]) :- 
		fbf2(A, X),
		fbf2(B, Y).
fbf2(A ∨ B, [A, B]) :- 
		fbf2(A, X),
		fbf2(B, Y).
fbf2(A → B, [A, B]) :- 
		fbf2(A, X),
		fbf2(B, Y).
fbf2(A ≡ B, [A, B]) :- 
		fbf2(A, X),
		fbf2(B, Y).
fbf2(¬ A, [A]) :- 
		fbf2(A, X).
fbf2(X, [Res]) :- 
		write(X)~>X2, 
		cat(L, X2, [1, 1]), 
		L = [`¬`, S, SS], 
		name(S, H), 
		not(H = 32), 
		cat([S, SS], ResStr, _), 
		separar_y_dato(ResStr, Res), !.

conectPrin([For], StrFor) :- 
		len(For, 1), 
		write(For)~>StrFor.
conectPrin([For], Cone) :- 
		fbf2(For, [A]), 
		[For] = [¬ A], 
		Cone = `¬`.
conectPrin([For], Cone) :- 
		fbf2(For, [A, B]), (
			[For] = [A ∧ B] -> Cone = `∧`; 
			[For] = [A → B] -> Cone = `→`; 
			[For] = [A ≡ B] -> Cone = `≡`; 
			[For] = [A ∨ B] -> Cone = `∨`
		).
conectPrin([For], `¬`) :- 
		write(For)~>X2,
		cat(L, X2, [1, 1]), 
		L = [`¬`, S, _], 
		name(S, H), 
		not(H = 32), !.
conectPrin(For, ConPrin) :- 
		For=..[ConPrin|_].

valorTabla(Form, List) :- 
		tabla_de_Verdad(Form, T), 
		findall(
			[Valor, Vect], 
			(member(Vect,T), vfbfV2(Form, Vect, Valor)), 
			List
		), 
		!.

listaConj(Exp, [Con, A, B]) :- 
		Exp=..[Con, A, B], !,
		char(A),
		char(B).
listaConj(Exp, [Con|Res2]) :- 
		Exp=..[Con|Res], 
		listaConj(Res, Res2).

contradiccion(Form, Res) :- 
		tabla_de_Verdad(Form, T), 
		findall(
			[Valor, Vect], 
			(member(Vect, T), vfbfV2(Form, Vect, Valor), Valor = `v`), 
			List
		), 
		(List = [] -> Res = 1 ; Res = 0), 
		!.

negaYposit(Form, Neg, Pos) :- 
		tabla_de_Verdad(Form, T), 
		findall(
			[Valor, Vect], 
			(member(Vect, T), vfbfV2(Form, Vect, Valor), Valor = `v`), 
			List
		), 
		length(List, Pos), 
		findall(
			[Valor, Vect], 
			(member(Vect, T), vfbfV2(Form, Vect, Valor), Valor = `f`), 
			List2
		), 
		length(List2, Neg).
