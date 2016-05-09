% File scrabble.lp

% words have six letters, ordered
% word(W).
% wordl(W, L1, L2, L3, L4, L5, L6).

% find a block of six with a letter in each position
{letter(X, Y, L) : X = 1..6, Y = 1..6} :- letter(L).

% one letter per position
:- letter(X, Y, L1), letter(X, Y, L2), L1 != L2.

% remove solutions where row isn't a word
6 {wordY(W, 1..6) : word(W)} 6.

:- wordY(W, Y),
	wordl(W, L1, _, _, _, _, _),
	not letter(1, Y, L1).

:- wordY(W, Y),
	wordl(W, _, L2, _, _, _, _),
	not letter(2, Y, L2).

:- wordY(W, Y),
	wordl(W, _, _, L3, _, _, _),
	not letter(3, Y, L3).

:- wordY(W, Y),
	wordl(W, _, _, _, L4, _, _),
	not letter(4, Y, L4).

:- wordY(W, Y),
	wordl(W, _, _, _, _, L5, _),
	not letter(5, Y, L5).

:- wordY(W, Y),
	wordl(W, _, _, _, _, _, L6),
	not letter(6, Y, L6).

%%%%%%%%%%% tautology %%%%%%%%%%%%%%%%%%
% only one word per row
%:- wordY(W1, Y), wordY(W2, Y), W1 != W2.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% no repeat words in the square
:- wordY(W, Y1), wordY(W, Y2), Y1 != Y2.


% remove solutions where col isn't a word
6 {wordX(W, 1..6) : word(W)} 6.

:- wordX(W, X),
	wordl(W, L1, _, _, _, _, _),
	not letter(X, 1, L1).

:- wordX(W, X),
	wordl(W, _, L2, _, _, _, _),
	not letter(X, 2, L2).

:- wordX(W, X),
	wordl(W, _, _, L3, _, _, _),
	not letter(X, 3, L3).

:- wordX(W, X),
	wordl(W, _, _, _, L4, _, _),
	not letter(X, 4, L4).

:- wordX(W, X),
	wordl(W, _, _, _, _, L5, _),
	not letter(X, 5, L5).

:- wordX(W, X),
	wordl(W, _, _, _, _, _, L6),
	not letter(X, 6, L6).

%%%%%%%%%%% tautology %%%%%%%%%%%%%%%%%%
% only one word per column
%:- wordX(W1, X), wordX(W2, X), W1 != W2.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% no repeat words in the square
:- wordX(W, X1), wordX(W, X2), X1 != X2.

#show wordY/2.
#show wordX/2.
%#show letter/3.