%___________________________________________________________________
%				     EXCEÇÕES

/*
Todos os personagens que são unknowns não estão contabilizando nos
cálculos dos predicados solicitados. Para isso, foram realizadas
modificações em predicados já existentes para obter os outputs corretos.
*/

%___________________________________________________________________
:-write("

GUIA DO PROGRAMA:
	").

:-write("

> Se quiser jogar nosso quiz de Got digite --> quiz.
	").

:-write("

> Para saber a qual casa o membro pertence [digite] --> house_of(nome_personagem, X).
	").

:- write("

> Para revelar o poder de cada cla [digite] --> power_of(nome_cla, X).
	").

:-write("

> Para consultar se o personagem e solteiro [digite] --> is_single(nome_personagem).
	").

:-write("

> Para calcular quantos aliados um casamento traria para o cla da pessoa_1 [digite] --> marriage_power(pessoa_1, pessoa_2 , Power).
	
	").

%____________________________________________________________
% DATABASE OF ALL MAJOR HOUSES

% House Stark
parent(rickard_stark, brandon_stark).
parent(rickard_stark, eddard_stark).
parent(rickard_stark, benjen_stark).
parent(rickard_stark, lyanna_stark).
parent(unknown_mother_stark, brandon_stark).
parent(unknown_mother_stark, eddard_stark).
parent(unknown_mother_stark, benjen_stark).
parent(unknown_mother_stark, lyanna_stark).
parent(eddard_stark, robb_stark).
parent(eddard_stark, sansa_stark).
parent(eddard_stark, arya_stark).
parent(eddard_stark, bran_stark).
parent(eddard_stark, rickon_stark).
parent(catelyn_stark, robb_stark).
parent(catelyn_stark, sansa_stark).
parent(catelyn_stark, arya_stark).
parent(catelyn_stark, bran_stark).
parent(catelyn_stark, rickon_stark).
parent(lyanna_stark, jon_snow).


% House Tyrell
parent(luthor_tyrell, mace_tyrell).
parent(olenna_tyrell, mace_tyrell).
parent(mace_tyrell, margaery_tyrell).
parent(mace_tyrell, loras_tyrell).
parent(alerie_hightower, margaery_tyrell).
parent(alerie_hightower, loras_tyrell).


% House Targaryen
parent(aegon_V_targaryen, duncan_targaryen).
parent(aegon_V_targaryen, aerys_targaryen).
parent(aegon_V_targaryen, rhaella_targaryen).
parent(aegon_V_targaryen, daeron_targaryen).
parent(unknown_mother_targaryen, duncan_targaryen).
parent(unknown_mother_targaryen, aerys_targaryen).
parent(unknown_mother_targaryen, rhaella_targaryen).
parent(unknown_mother_targaryen, daeron_targaryen).
parent(aerys_targaryen, rhaegar_targaryen).
parent(aerys_targaryen, viserys_targaryen).
parent(aerys_targaryen, daenerys_targaryen).
parent(rhaella_targaryen, rhaegar_targaryen).
parent(rhaella_targaryen, viserys_targaryen).
parent(rhaella_targaryen, daenerys_targaryen).
parent(rhaegar_targaryen, rhaenys_targaryen).
parent(rhaegar_targaryen, aegon_targaryen).
parent(rhaegar_targaryen, jon_snow).

% House Martell (+ Sand)
parent(unknown_mother_martell, doran_martell).
parent(unknown_mother_martell, ella_martell).
parent(unknown_mother_martell, oberyn_martell).
parent(lewyn_martell, doran_martell).
parent(lewyn_martell, ella_martell).
parent(lewyn_martell, oberyn_martell).
parent(doran_martell, trystane_martell).
parent(mellario_of_norvos, trystane_martell).
parent(ella_martell, aegon_targaryen).
parent(ella_martell, rhaenys_targaryen).
parent(oberyn_martell, tyene_sand).
parent(ellaria_sand, tyene_sand).
parent(oberyn_martell, four_unknown_martells).
parent(ellaria_sand, four_unknown_martells).
parent(oberyn_martell, obara_sand).
parent(oberyn_martell, nymeria_sand).
parent(oberyn_martell, sarella_sand).
parent(unknown_mother1_sand, obara_sand).
parent(unknown_mother2_sand, nymeria_sand).
parent(unknown_mother3_sand, sarella_sand).

% House Greyjoy
parent(unknown_mother_greyjoy, balon_greyjoy).
parent(unknown_mother_greyjoy, euron_greyjoy).
parent(unknown_mother_greyjoy, aeron_greyjoy).
parent(unknown_father_greyjoy, balon_greyjoy).
parent(unknown_father_greyjoy, euron_greyjoy).
parent(unknown_father_greyjoy, aeron_greyjoy).
parent(balon_greyjoy, rodrick_greyjoy).
parent(balon_greyjoy, maron_greyjoy).
parent(balon_greyjoy, yara_greyjoy).
parent(balon_greyjoy, theon_greyjoy).
parent(alannys_harlaw, rodrick_greyjoy).
parent(alannys_harlaw, maron_greyjoy).
parent(alannys_harlaw, yara_greyjoy).
parent(alannys_harlaw, theon_greyjoy).

% House Lannister
parent(unknown_mother_lannister, tywin_lannister):-false.
parent(unknown_mother_lannister, kevan_lannister):-false.
parent(tytos_lannister, tywin_lannister).
parent(tytos_lannister, kevan_lannister).
parent(tywin_lannister, cersei_lannister).
parent(tywin_lannister, jaime_lannister).
parent(tywin_lannister, tyrion_lannister).
parent(joanna_lannister, cersei_lannister).
parent(joanna_lannister, jaime_lannister).
parent(joanna_lannister, tyrion_lannister).
parent(cersei_lannister, joffery_lannister).
parent(cersei_lannister, myrcella_lannister).
parent(cersei_lannister, tommen_lannister).
parent(jaime_lannister, joffery_lannister).
parent(jaime_lannister, myrcella_lannister).
parent(jaime_lannister, tommen_lannister).
parent(kevan_lannister, lancel_lannister).
parent(kevan_lannister, willem_lannister).
parent(kevan_lannister, martyn_lannister).

% House Baratheon
parent(steffon_baratheon, robert_baratheon).
parent(steffon_baratheon, stannis_baratheon).
parent(steffon_baratheon, renly_baratheon).
parent(cassana_estermont, robert_baratheon).
parent(cassana_estermont, stannis_baratheon).
parent(cassana_estermont, renly_baratheon).
parent(robert_baratheon, gendry).
parent(stannis_baratheon, shireen_baratheon).
parent(selyse_baratheon, shireen_baratheon).


%____________________________________________________________
% ADD GENDER TO DATABASE

male(aegon_targaryen).
male(aegon_V_targaryen).
male(aeron_greyjoy).
male(aerys_targaryen).
male(balon_greyjoy).
male(benjen_stark).
male(bran_stark).
male(brandon_stark).
male(daeron_targaryen).
male(doran_martell).
male(duncan_targaryen).
male(eddard_stark).
male(euron_greyjoy).
male(gendry).
male(jaime_lannister).
male(joffery_lannister).
male(jon_snow).
male(kevan_lannister).
male(lancel_lannister).
male(lewyn_martell).
male(loras_tyrell).
male(luthor_tyrell).
male(mace_tyrell).
male(maron_greyjoy).
male(martyn_lannister).
male(oberyn_martell).
male(renly_baratheon).
male(rhaegar_targaryen).
male(rickard_stark).
male(rickon_stark).
male(robb_stark).
male(robert_baratheon).
male(rodrick_greyjoy).
male(stannis_baratheon).
male(steffon_baratheon).
male(theon_greyjoy).
male(tommen_lannister).
male(trystane_martell).
male(tyene_sand).
male(tyrion_lannister).
male(tytos_lannister).
male(tywin_lannister).
male(unknown_father_greyjoy).
male(viserys_targaryen).
male(willem_lannister).
female(alannys_harlaw).
female(arya_stark).
female(cassana_estermont).
female(catelyn_stark).
female(cersei_lannister).
female(daenerys_targaryen).
female(ella_martell).
female(ellaria_sand).
female(joanna_lannister).
female(lyanna_stark).
female(margaery_tyrell).
female(mellario_of_norvos).
female(myrcella_lannister).
female(nymeria_sand).
female(obara_sand).
female(olenna_tyrell).
female(rhaella_targaryen).
female(rhaenys_targaryen).
female(sansa_stark).
female(sarella_sand).
female(selyse_baratheon).
female(shireen_baratheon).
female(unknown_mother1_sand).
female(unknown_mother2_sand).
female(unknown_mother3_sand).
female(unknown_mother_greyjoy).
female(unknown_mother_lannister).
female(unknown_mother_martell).
female(unknown_mother_stark).
female(unknown_mother_targaryen).
female(yara_greyjoy).
female(alerie_hightower).


%____________________________________________________________
% ALIVE OR DEAD (OR UNKNOWN)

status(arya_stark, alive).
status(bran_stark, alive).
status(cersei_lannister, alive).
status(daenerys_targaryen, alive).
status(ellaria_sand, alive).
status(gendry, alive).
status(jaime_lannister, alive).
status(jon_snow, alive).
status(sansa_stark, alive).
status(theon_greyjoy, alive).
status(tyrion_lannister, alive).
status(yara_greyjoy, alive).
status(aegon_targaryen, dead).
status(aegon_V_targaryen, dead).
status(aerys_targaryen, dead).
status(balon_greyjoy, dead).
status(benjen_stark, dead).
status(brandon_stark, dead).
status(cassana_estermont, dead).
status(catelyn_stark, dead).
status(daeron_targaryen, dead).
status(doran_martell, dead).
status(duncan_targaryen, dead).
status(eddard_stark, dead).
status(ella_martell, dead).
status(joffery_lannister, dead).
status(kevan_lannister, dead).
status(lancel_lannister, dead).
status(loras_tyrell, dead).
status(luthor_tyrell, dead).
status(lyanna_stark, dead).
status(mace_tyrell, dead).
status(margaery_tyrell, dead).
status(maron_greyjoy, dead).
status(martyn_lannister, dead).
status(myrcella_lannister, dead).
status(nymeria_sand, dead).
status(obara_sand, dead).
status(oberyn_martell, dead).
status(olenna_tyrell, dead).
status(renly_baratheon, dead).
status(rhaegar_targaryen, dead).
status(rhaella_targaryen, dead).
status(rhaenys_targaryen, dead).
status(rickard_stark, dead).
status(rickon_stark, dead).
status(robb_stark, dead).
status(robert_baratheon, dead).
status(rodrick_greyjoy, dead).
status(selyse_baratheon, dead).
status(shireen_baratheon, dead).
status(stannis_baratheon, dead).
status(steffon_baratheon, dead).
status(tommen_lannister, dead).
status(trystane_martell, dead).
status(tyene_sand, dead).
status(tytos_lannister, dead).
status(tywin_lannister, dead).
status(viserys_targaryen, dead).
status(willem_lannister, dead).
status(joanna_lannister, dead).
status(lewyn_martell, dead).
status(the_hound, alive).
status(meryn_trant, dead).
status(ilyn_payne, alive).
status(polliver, dead).
status(the_mountain, alive).
status(rorge, dead).
status(walder_frey, dead).
status(melisandre, alive).
status(mellario_of_norvos, dead).
status(sarella_sand, alive).
status(beric_dondarrion, alive).
status(alerie_hightower, dead).
status(euron_greyjoy, dead).
status(alannis_harlaw, dead).
status(aeron_greyjoy, alive).
status(alannys_harlaw, alive).



% For those unclear if dead or alive...
status(X, unknown) :-
	not(status(X, alive)),						% Example of 'not' query
	not(status(X, dead)),
	!.											% Example of a cut '!' to stop backtracking


%____________________________________________________________
% DEFINE CHILD RELATIONSHIP - just using parent + gender facts

child(X, Y) :-
	parent(Y, X).

daughter(X, Y) :-
	parent(Y, X),
	female(X).

son(X, Y) :-
	parent(Y, X),
	male(X).

children(X, Children) :-
	setof(Y, parent(X,Y), Children),
	!.

children(X, Children) :-
	not(setof(Y, parent(X,Y), Children)),		% If not in the list, children is unknown.
	Children = none.							% '=' assigns parents to string 'unknown'


%____________________________________________________________
% DEFINE MOTHER/FATHER RELATIONSHIP - just using parent + gender facts

mother(X, Y) :-
	parent(X, Y),
	female(X).

father(X, Y) :-
	parent(X, Y),
	male(X).

parents(X, Parents) :-
	setof(Y, parent(Y, X), Parents),
	!.

parents(X, Parents) :-
	not(setof(Y, parent(Y, X), Parents)),		
	Parents = unknown.								

%____________________________________________________________
% DEFINE SIBLING RELATIONSHIP

sibling(X, Y) :-
	parent(Z, X),
	parent(Z, Y),
	dif(X, Y).									% Stops it returning themself as a sibling.
						

		% ISSUE: This alone returns the same sibling twice, 
		% if looking for a list of who are whos siblings. 
		% Necessary to create a list of siblings without duplicates
		% and lookup further relationships from this list, to 
		% minimalise further duplicates...


list_siblings(X, Siblings) :-
	setof(Y, sibling(X,Y), Siblings);			% Creates list of all siblings, excluding duplicates. 
	Siblings = none.							% If no siblings, returns none.

siblings(X, Y) :-
	list_siblings(X, Siblings),
	member(Y, Siblings).						% Checks if the queried sibling is a member of the
												% list of siblings for that person.
sister(X, Y) :-
	siblings(X, Y),
	female(X).

brother(X, Y) :-
	siblings(X, Y),
	male(X).


%____________________________________________________________
% DEFINE FURTHER RELATIONSHIPS

aunt(X, Y) :-
	sister(X, Z),
	parent(Z, Y),
	dif(X, Z).									% dif(X, Z) ensures that X is different to Z.

uncle(X, Y) :-
	brother(X, Z),
	parent(Z, Y),
	dif(X, Z).

neice(X, Y) :-
	daughter(X, Z),
	siblings(Z, Y),
	dif(Y, Z).	

nephew(X, Y) :-
	son(X, Z),
	siblings(Z, Y),
	dif(Y, Z).

%____________________________________________________________
% FIND RELATIONSHIP BETWEEN

relationship(X, Y) :-
	mother(X, Y),
	format("~w is the mother of ~w", [X, Y]), nl.

relationship(X, Y) :-
	father(X, Y),
	format("~w is the father of ~w", [X, Y]), nl.

relationship(X, Y) :-
	daughter(X, Y),
	format("~w is the daughter of ~w", [X, Y]), nl.

relationship(X, Y) :-
	son(X, Y),
	format("~w is the son of ~w", [X, Y]), nl.

relationship(X, Y) :-
	sister(X, Y),
	format("~w is the sister of ~w", [X, Y]), nl.

relationship(X, Y) :-
	brother(X, Y),
	format("~w is the brother of ~w", [X, Y]), nl.

relationship(X, Y) :-
	aunt(X, Y),
	format("~w is the aunt of ~w", [X, Y]), nl.

relationship(X, Y) :-
	uncle(X, Y),
	format("~w is the uncle of ~w", [X, Y]), nl.

relationship(X, Y) :-
	neice(X, Y),
	format("~w is the neice of ~w", [X, Y]), nl.

relationship(X, Y) :-
	nephew(X, Y),
	format("~w is the nephew of ~w", [X, Y]), nl.


%____________________________________________________________
% FIND IF ALIVE / DEAD

alive_or_dead(X) :-
	status(X, Y),
	format("Status: ~w", [Y]), nl.


%____________________________________________________________
% CREATE CHARACTER PROFILE

tell_me_about(X) :-
	alive_or_dead(X),
	parents(X, Parents),
	format("Parents: ~w", [Parents]), nl, 
	children(X, Children),
	format("Children: ~w", [Children]), nl,
	list_siblings(X, Siblings),
	format("Siblings: ~w", [Siblings]), nl,
	!.
	

%____________________________________________________________
% FIND ANCESTOR

ancestor(X, Y) :-								% Terminating
	parent(X, Y).

ancestor(X, Y) :-								% Looping
	parent(X, Z),
	ancestor(Z, Y).

ancestors(X, Ancestor_of) :-
	findall(A, ancestor(X, A), Ancestor_of).	% Returns a list of all results for ancestor(X,Y).

ancestor_mod(X, Z) :- (ancestor(Y, X), (Y\=unknown_mother_greyjoy, Y\=unknown_father_greyjoy, Y\=unknown_mother_lannister,
	Y\=unknown_mother_martell, Y\=unknown_mother1_sand, Y\=unknown_mother2_sand, Y\=unknown_mother3_sand, Y\=unknown_mother_targaryen, Y\=unknown_mother_stark)), Z=Y.

list_sibling_mod(X, Y) :- (sibling(Z,X), (Z\=four_unknown_martells)), Y=Z.

lista_irmaos(X, Y) :- setof(Z, list_sibling_mod(X, Z), W), Y=W.


%____________________________________________________________
% FIND DESCENDANTS

descendant(X, Y) :-
	ancestor(Y, X).

descendants(X, Descendant_of) :-
	findall(A, descendant(X, A), Descendant_of).


%____________________________________________________________
% ARYAS LIST 

on_list(the_hound).
on_list(meryn_trant).
on_list(cersei_lannister).
on_list(joffery_lannister).
on_list(ilyn_payne).
on_list(polliver).
on_list(the_mountain).
on_list(rorge).
on_list(walder_frey).
on_list(tywin_lannister).
on_list(melisandre).
on_list(beric_dondarrion).
on_list(thoros_of_myr).

still_kicking(X) :-
	on_list(X), 
	status(X, alive).

already_dead(X) :-
	on_list(X),
	status(X, dead).

not_dead_yet(Not_dead) :-
	findall(X, still_kicking(X), Not_dead).

ticked_off(Done) :-
	findall(X, already_dead(X), Done).

aryas_list :-
	print("ARYAS TOP SECRET LIST. KEEP OUT."), nl,
	findall(X, on_list(X), MainList),
	ticked_off(List),
	format("Done: ~w", [List]), nl,
	not_dead_yet(AnotherList),
	format("Still to go: ~w", [AnotherList]), nl,
	length(AnotherList, LCompletedList),							% Find length of list and return it as LMainList.
	length(MainList, LMainList),
	Percent is ((LMainList - LCompletedList) / LMainList) * 100,	% Maths operators.
	Percentage is round(Percent),									% Round to the nearest integer.
	format("Percentage complete: ~w%", [Percentage]), nl.

%____________________________________________________________
% RIGHTFUL HEIR

rightful_heir(X) :-								% Inarguable, faultess logic.
	parent(robert_baratheon, X),
	status(X, alive).

 
%___________________________________________________________________
%                            TAREFAS

%____________________________Tarefa 1_______________________________

/*

O predicado tell_me_about(X) recebe uma entrada cujo valor deve ser um personagem,
esse predicado retorna se o personagem está vivo, se tem pais, filhos e irmãos.

Funcionamento: 

-Para realizar a tarefa de vivo ou morto o predicado tell_me_about conta com um
predicado auxiliar chamado alive_or_dead que consulta nos fatos o predicado status 
daquele personagem e retorna alive caso esteja vivo e dead caso morto.

-Para realizar a tarefa de retornar os pais do personagem o predicado tell_me_about
conta com o predicado auxiliar parent, que retorna uma lista com pai e a mae do individuo
utilizando o método setof, esse método cria uma lista com os resultados do predicado parent.

-Para realizar a tarefa de retornar os filhos do personagem é utlizado o predicado children que por sua vez
também utiliza o parent, porém, o personagem é passado do lado esquerdo, ou seja, do lado onde ele é pai,
retornando assim do lado direito todos os seus filhos, o método children também retorna os filhos em uma
lista e conta com o método setof para isso.

-Para realizar a tarefa de retornar os irmãos do personagem é utilizado o predicado list_siblings que utiliza
do predicado sibling e por sua vez utiliza dois predicados parent e um predicado dif. Para checar se
personagens são irmãos primeiro o personagem é passado do lado direito do primeiro predicado parent, o valor
retornado desse predicado são os pais do personagem, e esses pais são passados do lado esquerdo do outro 
predicado parent, que retorna os filhos desses pais, por fim, o predicado dif impede que o nome do próprio 
personagem seja retornado já que ele também é filho desses pais. Dessa forma, os filhos desses pais são retornados e,
por consequencia, são irmãos do personagem passado como parametro. O predicado list_siblings também retorna uma lista
de irmãos e conta com o método setof no predicado sibling para realizar essa tarefa.

Todos os predicados usam o format para imprimir os resultados na tela.
*/


% ___________________________Tarefa 2_______________________________

/* 
O predicado house_of recebe um nome e utiliza o sobrenome do personagem para dizer a qual clã 
esse personagem pertence, para quebrar o nome em dois foi utlilizado o método atomic_list_concat.

PS: Como dentro de alguns clãs existem pessoas com sobrenomes que não são do clã, foi tratado cada
    exeção pra seguir fielmente os personagens dentro de cada casa descrita no inicio do arquivo.
*/

house_of(Z, W):-
	atomic_list_concat(L, '_', Z), nth1(2, L, S),
	( S==snow, (W=stark; W=targaryen);
	  S==sand, W=martell;
	  S==of, W=martell;
	  S==harlaw, W=greyjoy;
	  S==estermont, W=baratheon;
	  S==hightower, W=tyrell;
	  S==lannister, W=S;
	  S==baratheon, W=S;
	  S==greyjoy, W=S;
	  S==stark, W=S; 
	  S==martell, W=S; 
	  S==targaryen, W=S;
	  S==tyrell, W=S;
	  Z==aegon_targaryen, W=martell;
	  Z==rhaenys_targaryen, W=martell); Z==gendry, W=baratheon.

% ___________________________Tarefa 3________________________________

/*
O predicado power_of funciona através de 4 predicados auxiliares: split, tamanho, membros_cla e status.

Funcionamento:

O predicado membros_cla usa o predicado status para retornar o nome de todas as pessoas da base de dados,
esses nomes são passdos dentro do split que separa o nome do sobrenome da pessoa, dessa forma,
os nomes são separados através do cla do individuo já que os sobrenomes diz a qual clã a pessoa pertence.

Dentro do predicado power_of é utilizado o método setof no predicado membros_cla que gera uma lista dessas
pessoas, em seguida o predicado tamanho conta quantas pessoas tem na lista e retorna o poder do clã.
*/


split(X, Z) :- (atomic_list_concat(L, '_', X), nth1(2, L, S)), Z=S.

tamanho([],0).
tamanho([_|W],N):- tamanho(W,N1), N is N1+1.

membros_cla_tyrell(X, Y) :- (status(A, _), split(A, Z)),  (Z==X; Z==hightower), Y=A.
membros_cla_stark(X, Y) :- (status(A, _), split(A, Z)),  (Z==X; Z==snow), Y=A.
membros_cla_martell(X, Y) :- (status(A, _), split(A, Z)),  (Z==X; Z==sand; Z==of;A==aegon_targaryen; A==rhaenys_targaryen), Y=A.
membros_cla_baratheon(X, Y) :- (status(A, _), split(A, Z)),  (Z==X; Z==estermont), Y=A.
membros_cla_lannister(X, Y) :- (status(A, _), split(A, Z)),  (Z==X), Y=A.
membros_cla_targaryen(X, Y) :- (status(A, _), split(A, Z)),  (Z==X; Z=='V'; Z==snow), Y=A.
membros_cla_greyjoy(X, Y) :- (status(A, _), split(A, Z)),  (Z==X; Z==harlaw), Y=A.

power_of(tyrell, Z) :- (setof(Y, membros_cla_tyrell(tyrell, Y), W)), tamanho(W, N), Z=N.
power_of(stark, Z) :- (setof(Y, membros_cla_stark(stark, Y), W)), tamanho(W, N), Z=N.
power_of(greyjoy, Z) :- (setof(Y, membros_cla_greyjoy(greyjoy, Y), W)), tamanho(W, N), Z=N.
power_of(baratheon, Z) :- (setof(Y, membros_cla_baratheon(baratheon, Y), W)), tamanho(W, N), Z is N + 1.
power_of(martell, Z) :- (setof(Y, membros_cla_martell(martell, Y), W)), tamanho(W, N), Z=N.
power_of(lannister, Z) :- (setof(Y, membros_cla_lannister(lannister, Y), W)), tamanho(W, N), Z=N.
power_of(targaryen, Z) :- (setof(Y, membros_cla_targaryen(targaryen, Y), W)), tamanho(W, N), Z=N.

%__________________________Tarefa 4_____________________________________

/*
O predicado is_single utiliza o predicado parent passando a pessoa como parametro
do lado esquerdo e um underscore do lado direito, dessa forma, se a pessoa tiver
um filho será retornado true e nesse caso ela é casada, se não tiver retornará
false e ela é solteira.

Foi utilizado o is__single no predicado de forma que se tiver filho
ele retorna true e um print de casado. Para retornar que seja falso quando é casado
eu apenas usei o not() pra me dizer o contrário do que eu queria e um print indicando
que o personagem é solteiro no predicado original is_single.
*/


is__single(X) :- parent(X,_), 
	format(" "), nl, 
	format(" casado(a)!"), nl,
	format(" "), nl.

is_single(X) :- not(is__single(X)),
	format(" "), nl, 
	format(" solteiro(a)!"), nl,
	format(" "), nl.

%__________________________Tarefa 5______________________________________

/*

(Sobre o predicado marriage_power)

*Retorna em Z quantos aliados o clã da pessoa passada em X obteria ao se casar com Y.



Para realizar a tarefa 5 foi necessário tratar as exceções pedidas no projeto.

exceções: (Nao pode casar genero igual, nao pode do mesmo cla, nao pode gente casada).


Predicados utilzados nas exceções:

- teste_cla(X, Y) --> usa o predicado house_of e compara o sobrenome pra ver se são de mesmo clã.

- teste_casamento(X, Y) --> utiliza os predicados male e female, e retorna true quando são de generos diferentes.

- teste_solteiro(X) --> checa se ambos personagens são solteiros e retorna true caso sim.


Predicado que retorna os aliados:

- retorna_lista_completa(X, T) --> utiliza os predicados: uncle, aunt, ancestor, neice, nephew e list_siblings. 
  Esse predicado retorna todos os parentescos solicitados: (irmãos, tio, tia, sobrinho, sobrinha, ancestrais).

- list_soma(X, U) --> usa o método setof no predicado retorna_lista_completa criando uma lista sem redundancia 
  com todos os parentes da pessoa passada como parametro. Após a criação da lista é utilizado o predicado tamanho
  para calcular quantos elementos tem na lista, devolvendo assim o poder aliado.

- marriage_power(nome_1, nome_2, Poder) --> utiliza todos os predicados de exceções e o list_soma(X,U), dessa forma,
  se nome_1 for solteiro, nome_2 solteiro, ambos de genero diferente e de clãs diferentes o list_soma(X, U) será
  ativado com o nome_2 como parametro e retornará os aliados que ele trará incluindo ele.

*/




retorna_lista_completa(X, T):- 
	((aunt(U, X), T=U);
	(uncle(Y, X), T=Y);
	(ancestor_mod(X, H), T=H);
	(list_sibling_mod(X, K), T=K);
	(neice(J, X), T=J);
	(nephew(L, X), T=L)).

lista_soma(X, U) :- setof(G, retorna_lista_completa(X, G), W), tamanho(W,N), U=N.


casamento(X, Y) :- ((male(X), male(Y)) ; (female(X), female(Y))),
	format("    "), nl, 
	format("O casamento de mesmo genero nao e permitido neste reino !!"), nl,
	format("    "), nl.

teste_casamento(X, Y) :- not(casamento(X,Y)).


verifica_cla(X, Y) :- (house_of(X,S), house_of(Y, V)), S == V,
	format("    "), nl, 
	format("O casamento entre membros do mesmo cla nao e permitido !!"), nl,
	format("    "), nl.
	
teste_cla(X, Y) :- not(verifica_cla(X, Y)).


eh_solteiro(X) :- parent(X,_),
	format("                         "), nl,
	(write(X), write(" ja e casado !!")),
	format("                         "), nl,
	format("                          "), nl.

teste_solteiro(X) :- not(eh_solteiro(X)).


marriage_power(X, Y, Z) :- 
	(teste_casamento(X, Y),
	teste_solteiro(X), 
	teste_solteiro(Y), 
	teste_cla(X, Y)),
	lista_soma(Y, U),
	Z is U+1.

%__________________________TAREFA 6__________________________

% Note que é necessário não cometer o seguinte erro desse exemplo abaixo:

/*

Os solteiros de baratheon são apenas renly_baratheon(homem) e shireen_baratheon(mulher).

o homem mais adequado a se casar com shireen é jon_snow que retorna 14 de aliados incluindo ele.

a mulher adequada pra renly seria rhaenys_targaryen que daria 13 de poder, porém, jon_snow está
em dois clãs e é irmão de rhaenys, logo, os aliados de jon snow seriam os mesmos de rhaenys.

Conclusão: não poderia fazer essa união de poder pois não traria o valor máximo como solicitado.

*/


solteiro(X) :- not(parent(X,_)).

%____Retorna os solteiros de cada clã____

solteiros_tyrell(X, Y) :- (status(A, _), split(A, Z)),  ((Z==X; Z==hightower), solteiro(A)), Y=A.

solteiros_stark(X, Y) :- (status(A, _), split(A, Z)),  ((Z==X; Z==snow), solteiro(A)), Y=A.

solteiros_lannister(X, Y) :- (status(A, _), split(A, Z)),  ((Z==X), solteiro(A)), Y=A.

solteiros_martell(X, Y) :- (status(A, _), split(A, Z)),  ((Z==X; Z==sand; Z==of), solteiro(A)), Y=A.

solteiros_baratheon(X, Y) :- (status(A, _), split(A, Z)),  ((Z==X; Z==estermont), solteiro(A)), Y=A.

solteiros_greyjoy(X, Y) :- (status(A, _), split(A, Z)),  ((Z==X), solteiro(A)), Y=A.

solteiros_targaryen(X, Y) :- (status(A, _), split(A, Z)),  ((Z==X; Z=='V'; Z==snow), solteiro(A)), Y=A.




casamento_recomendado(tyrell, [(loras_tyrell, rhaenys_targaryen), (margaery_tyrell, robb_stark)], 24).

casamento_recomendado(stark, [(arya_stark, aegon_targaryen), (bran_stark, yara_greyjoy), (jon_snow, margaery_tyrell), (benjen_stark, myrcella_lannister),
(brandon_stark, shireen_baratheon), (sansa_stark, willem_lannister), (robb_stark, daenerys_taragryen), (rickon_stark, sarella_sand)], 53).

casamento_recomendado(lannister, [(joffery_lannister, rhaenys_targaryen), (lancel_lannister, sansa_stark), (martyn_lannister, yara_greyjoy), 
(myrcella_lannister, renly_baratheon), (tommen_lannister, margaery_tyrell), (tyrion_lannister, sarella_sand), (willem_lannister, daenerys_targaryen)], 52).

casamento_recomendado(targaryen, [(aegon_targaryen, sansa_stark), (daenerys_targaryen, tyrion_lannister), (daeron_targaryen, sarella_sand), 
(duncan_targaryen, yara_greyjoy), (jon_snow, daenerys_targaryen), (rhaenys_targaryen, renly_baratheon), (viserys_targaryen, margaery_tyrell)], 61).

casamento_recomendado(baratheon, [(gendry, rhaenys_targaryen), (renly_baratheon, sansa_stark), (shireen_baratheon, tyrion_lannister)], 34).

casamento_recomendado(martell, [(nymeria_sand, jon_snow), (obara_sand, tyrion_lannister), (sarella_sand, theon_greyjoy), (trystane_martell, shireen_baratheon), 
(tyene_sand, sansa_stark)], 45).

casamento_recomendado(greyjoy, [(aeron_greyjoy, rhaenys_targaryen), (euron_greyjoy, sansa_stark), (maron_greyjoy, myrcella_lannister), (rodrick_greyjoy, shireen_baratheon),
(theon_greyjoy, margaery_tyrell), (yara_greyjoy, tyene_sand)], 52).


% O predicado power_by_marriage utiliza as listas a cima para printar os outputs

power_by_marriage(Cla, Lista, Poder) :- 
	casamento_recomendado(Cla, List, Power), 
	format(" "), nl,
	format("Casamentos recomendados e aliados ganhos:"), nl,
	format(" "), nl,
	Lista=List,Poder=Power.




%_____________ATIVIDADE EXTRA / QUIZ DE GAME OF THRONES_____________


% GABARITO DAS RESPOSTAS

question_1(X) :- X==c, format("		PARABENS, VOCE ACERTOU!"), nl.
question_1(X) :- not(X==c), format("		ERROOOU (Faustao)"), nl.

question_2(X) :- X==e, format("		VOCE ACERTOU!"), nl.
question_2(X) :- not(X==e), format("		ERROU, QUE ISSO MEU FILHO CALMA! "), nl.

question_3(X) :- X==c, format("		SABEDORIA DESBALANCEADA, VOCE ESTA CORRETO!"), nl.
question_3(X) :- not(X==c), format("		ERRADO, TA PRECISANDO VER DE NOVO! "), nl.

question_4(X) :- X==d, format("		PARABENS, VOCE ESTA INDO BEM !"), nl.
question_4(X) :- not(X==d), format("		ERRADO, TA PRECISANDO VER DE NOVO! "), nl.

question_5(X) :- X==a, format("		BOM TRABALHO, ESTA CERTO!"), nl.
question_5(X) :- not(X==a), format("		VOCE ERROU! "), nl.

question_6(X) :- X==b, format("		ACERTOU!"), nl.
question_6(X) :- not(X==b), format("		ERRADO! "), nl.

question_7(X) :- X==e, format("		EXCELENTE, ESTA CORRETO!"), nl.
question_7(X) :- not(X==e), format("		ERROOOOU (Faustao) "), nl.



% Para somar as respostas corretas

q1(X, K) :- X==c, K is 1.
q1(X, K) :- X\=c, K is 0.

q2(X, K) :- X==e, K is 1.
q2(X, K) :- X\=e, K is 0.

q3(X, K) :- X==c, K is 1.
q3(X, K) :- X\=c, K is 0.

q4(X, K) :- X==d, K is 1.
q4(X, K) :- X\=d, K is 0.

q5(X, K) :- X==a, K is 1.
q5(X, K) :- X\=a, K is 0.


q6(X, K) :- X==b, K is 1.
q6(X, K) :- X\=b, K is 0.

q7(X, K) :- X==e, K is 1.
q7(X, K) :- X\=e, K is 0.



user(X) :- X==sim, format("			   VAMOS NESSA !"), nl.
user(X) :- X==nao, format("			LA ELE o cara entra e nao joga!"), nl.
prossegue(X) :- X==sim.


quiz :- 
	write("
INSTRUCAO: Coloque ponto ao final de cada resposta para funcionar!!


				GoT QUIZ


		Vamos ver se voce e mesmo fa de Game of Thrones!
													"), nl,
	write("Preparado(a)?"), nl,
		read(Input),
 
		user(Input), prossegue(Input),

	write("

		1 - Quem pediu para Melisandre ressucitar Jon snow?
		
		a) Tormund
		b) Edd Doloroso
		c) Sor Davos
		d) Meitsre Aemon
		e) Sam Tarly
		"), nl,
		read(Input2),
		question_1(Input2), 
	write("
		
		2 - Qual e o brasao da casa Seaworth?

		a) Uma foice em um campo azul.
		b) Uma cebola.
		c) Uma sereia.
		d) Um barco preto navegando ao sol poente.
		e) Um barco preto com uma cebola cinza desenhada na vela.
		"), nl,
		read(Input3),
		question_2(Input3),
	write("
		
		3 - Qual o nome dos tres dragoes de Daenerys Targaryen?
	
		a) Drogon, Viserys e Aegon.
		b) Rhaego, Viserys e Drogo.
		c) Drogon, Viserion e Rhaegal.
		d) Aegon, Dracarys e Drogon.
		e) Dracarys, Viserion e Drogon	
		"), nl,
		read(Input4),
		question_3(Input4),
	write("
	
		4 - Qual o nome da espada dada a Jon Snow, pelo comandante da patrulha da noite?
		
		a) Luminifera.
		b) Gelo.
		c) Agulha.
		d) Garralonga.
		e) Fantasma.
		"), nl,
		read(Input5),
		question_4(Input5),
	write("

		5 - Quem foi o primeiro a se sentar no trono apos a morte do rei louco?

		a) Jaime Lannister.
		b) Ned Stark.
		c) Tywin Lannister.
		d) Robert Baratheon.
		e) Jon Arryn.
		"), nl,
		read(Input6),
		question_5(Input6),
	write("

		6 - Qual adjetivo dado ao primeiro Targaryen a se tornar rei de Westeros?

		a) Aegon, o sobreano.
		b) Aegon, o conquistador.
		c) Aegon, o libertador.
		d) Aegon, o pacificdor.
		e) Aegon, o dragao.
		"), nl,
		read(Input7),
		question_6(Input7),
	write("

		7 - Em ordem, como foram as mortes de Ned Stark, Rob Stark, Catelyn Stark e Rickon Stark?

		a) Atropelado por carruagem, decapitado, degolada, devorado por um lobo.
		
		b) Apunhalado no coracao, degolado, flechada, cabeca esmagada.

		c) Flechado, degolado, apunhalada, atravessado por uma espada.
	
		d) cabeca esmagada, devorado por um lobo, flechada, degolado.

		e) Decapitado, apunhalado no coracao, degolada, flechado.
		"), nl,
		read(Input8),
		question_7(Input8),
		q1(Input2, V), q2(Input3, V1), q3(Input4, V2), q4(Input5, V3), q5(Input6, V4), q6(Input7, V5), q7(Input8, V6),
		T is V+V1+V2+V3+V4+V5+V6,
		write("
		

		SUA PONTUACAO: "), write(T), write("/7"), nl,
		((T >=6, 
		write("
		OTIMA PONTUACAO, VOCE E MESMO UM FA DA SERIE."), nl);
		(T == 5, 
		write("
		RAZOAVEL, AINDA DA PRA MELHORAR."), nl);
		(T =< 4, 
		write("
		PONTUACAO BAIXA, E MELHOR ASSISTIR DE NOVO"), nl)),
		write("
		GABARITO: 1-C, 2-E, 3-C, 4-D, 5-A, 6-B, 7-E.
		").