% File scrabble-roland.lp
% credit to Roland Kaminski

% words have six letters, ordered
% word(W).
% wordl(W, L1, L2, L3, L4, L5, L6).

word_letter(W,1,L) :- wordl(W,L,_,_,_,_,_).
word_letter(W,2,L) :- wordl(W,_,L,_,_,_,_).
word_letter(W,3,L) :- wordl(W,_,_,L,_,_,_).
word_letter(W,4,L) :- wordl(W,_,_,_,L,_,_).
word_letter(W,5,L) :- wordl(W,_,_,_,_,L,_).
word_letter(W,6,L) :- wordl(W,_,_,_,_,_,L).

% find a block of six with a letter in each position
1 { letter(X, Y, L) : letter(L) } 1 :- X = 1..6, Y = 1..6.

% remove solutions where row isn't a word
wordY(W,Y) :- Y = 1..6, word(W), letter(X,Y,L) : word_letter(W,X,L).
wordY(Y) :- wordY(_,Y).

% remove solutions where col isn't a word
wordX(W,X) :- X = 1..6, word(W), letter(X,Y,L) : word_letter(W,Y,L).
wordX(X) :- wordX(_,X).

% no repeat words in the square
%:- 2 { wordY(W,Y); wordX(W,X) }, word(W).

:- 2 { wordY(W,Y) }, word(W).
:- 2 { wordX(W,X) }, word(W).

:- not wordY(Y), Y=1..6.
:- not wordX(X), X=1..6.

%#maximize { 1,y,Y : wordY(Y); 1,x,X : wordX(X) }.

#show wordY/2.
#show wordX/2.