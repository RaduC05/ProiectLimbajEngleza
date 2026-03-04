sentence --> noun_phrase(Num), verb_phrase(Num).

noun_phrase(Num) --> det(Num), adj, noun(Num).
noun_phrase(Num) --> det(Num), noun(Num).

verb_phrase(Num) --> v(Num).
verb_phrase(Num) --> v(Num), noun_phrase(_).

det(sg) --> [a].
det(sg) --> [the].
det(pl) --> [the].
det(pl) --> [many].
det(pl) --> [some].

adj --> [big].
adj --> [small].
adj --> [happy].
adj --> [green].
adj --> [fast].

noun(sg) --> [boy].
noun(sg) --> [cat].
noun(sg) --> [apple].
noun(sg) --> [car].
noun(pl) --> [boys].
noun(pl) --> [cats].
noun(pl) --> [apples].
noun(pl) --> [cars].

v(sg) --> [eats].
v(sg) --> [likes].
v(sg) --> [sees].
v(sg) --> [drives].
v(pl) --> [eat].
v(pl) --> [like].
v(pl) --> [see].
v(pl) --> [drive].

propozitie(L) :- phrase(sentence, L).

genereaza(P) :- phrase(sentence, P).

genereaza_random(P) :- 
    findall(L, phrase(sentence, L), Toate),
    random_member(P, Toate).