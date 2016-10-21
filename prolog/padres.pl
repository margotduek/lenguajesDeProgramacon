father(tare, sara).
father(abraham, isaac).
father(terach, nachor).
father(terach, haran).
father(terach, abraham).
father(haran, lot).
father(haran, mismcah).
father(haran, yiscah).
mother(sara, isaac).
male(terach).
male(haran).
male(abraham).
male(nachor).
male(isaac).
male(lot).
female(sara).
female(mismcah).
female(yiscah).
son(x,y):-father(y,x), male(x).
grandFather(x,y):father(x,z), father(z,y).
