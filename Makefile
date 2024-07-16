fb1-1: fb1-1.l
	flex fb1-1.l
	gcc lex.yy.c -lfl

fb1-2: fb1-2.l
	flex fb1-2.l
	gcc lex.yy.c -lfl

fb1-3: fb1-3.l
	flex fb1-3.l
	gcc lex.yy.c -lfl

fb1-4: fb1-4.l
	flex fb1-4.l
	gcc lex.yy.c -lfl

fb1-5:	fb1-5.l	fb1-5.y
	bison -d fb1-5.y
	flex fb1-5.l
	gcc fb1-5.tab.c lex.yy.c -lfl

fb3-1:	fb3-1.l fb3-1.y fb3-1.h
	bison -d fb3-1.y
	flex -o fb3-1.lex.c fb3-1.l
	gcc fb3-1.tab.c fb3-1.lex.c fb3-1funcs.c -lfl


fb3-2:	fb3-2.l fb3-2.y fb3-2.h
	bison -d fb3-2.y
	flex -o fb3-2.lex.c fb3-2.l
	gcc fb3-2.tab.c fb3-2.lex.c fb3-2funcs.c -lfl -lm

clean: 
	rm -rf *.o *lex.* a.out *.tab.*