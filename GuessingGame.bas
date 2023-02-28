10 REM GUESSING GAME
20 REM GENERATE A RANDOM NUMBER
30 N=INT(RND(1)*100)+1
40 REM VARIABLE INITIALIZATION
50 G=0: H=0
60 REM DRAWING THE PROMPT
70 PRINT"{CLR}{HOME}"
80 PRINT"The computer has generated a number between 1 and 100."
90 PRINT"Your task is to try to guess it!"
100 PRINT"You have 10 attempts!"
110 PRINT"Enter your guess and press Enter!"
120 REM NUMBER GUESSING ATTEMPT
130 FOR I=1 TO 10
140 INPUT X
150 IF X=N THEN GOTO 220
160 IF X<N THEN PRINT"Your number is too small.":H=H+1
170 IF X>N THEN PRINT"Your number is too big.":H=H+1
180 IF H=10 THEN GOTO 250
190 PRINT"You have ";10-I;" attempts left."
200 NEXT I
210 REM GAME OVER
220 PRINT"{CLR}{HOME}"
230 PRINT"Congratulations, you have guessed the number ";X;" !"
240 GOTO 270
250 PRINT"{CLR}{HOME}"
260 PRINT"Unfortunately, you failed to guess the number."
270 END
