COMMON PROGRESS$, SPEED, BOOMERANG, MAX, MAN, ROOM, CASTLE, X, Y, PX, PY, FACE$, STEPS, MONEY, KEYS, ITEM$, SOUND$, NAME$, COUNTRY$, SAVEFILE$

SCREEN 13
CLS : LOCATE 12, 12: COLOR 15: PRINT "Save your progress?"
CHOICEYRN:
DO: YESORNO$ = INKEY$: LOOP UNTIL YESORNO$ <> ""
IF UCASE$(YESORNO$) = "Y" THEN GOTO SAVE
IF UCASE$(YESORNO$) = "N" THEN CLS : CHAIN "TITLE.BAS"
GOTO CHOICEYRN
SAVE:
OPEN SAVEFILE$ FOR OUTPUT AS #1
PRINT #1, NAME$
PRINT #1, COUNTRY$
PRINT #1, BOOMERANG
PRINT #1, MAX
PRINT #1, MONEY
PRINT #1, KEYS
PRINT #1, ITEM$
PRINT #1, PROGRESS$
CLOSE #1
CLS : CHAIN "TITLE.BAS"

