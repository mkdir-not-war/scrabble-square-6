# scrabble-square-6
Given a text file of all 6-letter scrabble words, 
finds every square of 36 letters such that every row is a word and every column is a word.

to run, need to have clingo: https://sourceforge.net/projects/potassco/files/clingo/

example: 

$ clingo letters.lp wordstest.lp scrabble.lp 
clingo version 4.2.1 
Reading from letters.lp ... 
Solving... 
Answer: 1

wordY(garter,1) wordY(averse,2) wordY(recite,3) wordY(tribal,4) wordY(estate,5) 
wordY(reeled,6) wordX(garter,1) wordX(averse,2) wordX(recite,3) wordX(tribal,4) 
wordX(estate,5) wordX(reeled,6) 

SATISFIABLE
Models       : 1+    
Calls        : 1
Time         : 0.061s (Solving: 0.01s 1st Model: 0.01s Unsat: 0.00s)
CPU Time     : 0.050s
$


To run on all words (my computer doesn't have enough memory to do this as is):

$ python words.py
$ clingo letters.lp words6.lp scrabble.lp
