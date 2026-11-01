% Danah Alhugail
% Lab 11 - Name Game

:- dynamic letter/1.

letter(a).
letter(b).
letter(c).

% Start
name_game :-
    write('Hi. This is the Name Game.'), nl,
    write('You will be given a set of English letters in which you will add, delete or move to create your name.'), nl,
    menu.

% Menu
menu :-
    nl,
    write('Choose from the following:'), nl,
    write('1- Display the current set of letters'), nl,
    write('2- Add a letter'), nl,
    write('3- Add a letter at the top'), nl,
    write('4- Add a letter at the bottom'), nl,
    write('5- Delete a letter'), nl,
    write('6- Delete all letters'), nl,
    write('7- Exit'), nl,
    write('Enter your choice: '),
    read(Choice),
    option(Choice).

% Show letters
option(1) :-
    listing(letter/1),
    menu.

% Add letter
option(2) :-
    write('Enter a letter: '),
    read(L),
    assert(letter(L)),
    menu.

% Add at top
option(3) :-
    write('Enter a letter: '),
    read(L),
    asserta(letter(L)),
    menu.

% Add at bottom
option(4) :-
    write('Enter a letter: '),
    read(L),
    assertz(letter(L)),
    menu.

% Delete letter
option(5) :-
    write('Enter a letter: '),
    read(L),
    retract(letter(L)),
    menu.

% Delete all
option(6) :-
    retractall(letter(_)),
    menu.

% Exit
option(7) :-
    write('Goodbye!').
