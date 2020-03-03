%%This is a program that solves the Analogy IQ - Test
%%Name:Makridou Ilektra ID:dai17092

%%The following code describes the first 16 figures of the problem

%%figure/2
figure(1, middle(triangle,square)).
figure(2, middle(circle,triangle)).
figure(3, middle(square,circle)).
figure(4, middle(square,square)).
figure(5, middle(square,triangle)).
figure(6, middle(triangle,circle)).
figure(7, middle(circle,square)).
figure(8, middle(triangle,triangle)).
figure(9, downleft(circle,circle)).
figure(10, upleft(circle,circle)).
figure(11, downright(circle,circle)).
figure(12, upright(circle,circle)).
figure(13, downleft(triangle,triangle)).
figure(14, upleft(triangle,triangle)).
figure(15, downright(triangle,triangle)).
figure(16, upright(triangle,triangle)).


%%The following code describes some of the relations between the figures

%%relation/3
relation(middle(S1,S2),middle(S2,S1),inverse).
relation(middle(S1,_),middle(S1,_),differentout).
relation(middle(_,S2),middle(_,S2),differentin).
relation(upleft(S1,S2),upright(S1,S2),leftrightmirror).
relation(downleft(S1,S2),upleft(S1,S2),updownmirror).
relation(upleft(S1,S2), downright(S1,S2),diagonalmirrorone).
relation(downleft(S1,S2),upright(S1,S2),diagonalmirrortwo).

%%The following code identifies the figures that follow the analogy that the first two predicates dictate.

%%analogy/4
analogy(F1,F2,F3,F4):-
	figure(F1,S1),
	figure(F2,S2),
	figure(F3,S3),
	figure(F4,S4),
	relation(S1,S2,R1),
	relation(S3,S4,R1),
	S3\=S4.



	
	
	 



