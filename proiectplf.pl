subst(p3, sg, m) --> [student]; [professor]; [boy]; [colleague]; [man]; [doctor]; [engineer]; [programmer]; [artist]; [writer].
subst(p3, sg, f) --> [student]; [professor]; [girl]; [colleague]; [woman]; [doctor]; [engineer]; [programmer]; [artist]; [writer].
subst(p3, pl, m) --> [students]; [professors]; [boys]; [colleagues]; [men]; [doctors]; [engineers]; [programmers]; [artists]; [writers].
subst(p3, pl, f) --> [students]; [professors]; [girls]; [colleagues]; [women]; [doctors]; [engineers]; [programmers]; [artists]; [writers].

pronume(p1, sg) --> [i].
pronume(p1, pl) --> [we].
pronume(p2, sg) --> [you].
pronume(p2, pl) --> [you].

verb(p3, sg) --> [learns]; [writes]; [reads]; [analyzes]; [creates]; [designs]; [listens]; [explains]; [observes]; [paints].
verb(p3, pl) --> [learn]; [write]; [read]; [analyze]; [create]; [design]; [listen]; [explain]; [observe]; [paint].
verb(p1, sg) --> [learn]; [write]; [read]; [analyze]; [create]; [design]; [listen]; [explain]; [observe]; [paint].
verb(p1, pl) --> [learn]; [write]; [read]; [analyze]; [create]; [design]; [listen]; [explain]; [observe]; [paint].
verb(p2, sg) --> [learn]; [write]; [read]; [analyze]; [create]; [design]; [listen]; [explain]; [observe]; [paint].
verb(p2, pl) --> [learn]; [write]; [read]; [analyze]; [create]; [design]; [listen]; [explain]; [observe]; [paint].

adj --> [diligent]; [attentive]; [intelligent]; [passionate]; [young]; [serious]; [creative]; [talented]; [fast]; [calm].

complement --> [a_project]; [a_book]; [a_course]; [a_lesson]; [a_code]; [a_painting]; [a_plan]; [an_idea]; [an_article]; [a_homework].
complement --> [mathematics]; [informatics]; [history]; [physics]; [biology]; [music]; [art]; [geography]; [chemistry]; [logic].

propozitie_dcg --> pronume(P, N), verb(P, N), complement.
propozitie_dcg --> [the], subst(P, N, _), verb(P, N), complement.
propozitie_dcg --> [the], adj, subst(P, N, _), verb(P, N), complement.

propozitie(Lista) :- propozitie_dcg(Lista, []).
genereaza(L) :- propozitie(L).
genereaza_random(P) :- findall(S, propozitie(S), Toate), random_member(P, Toate).