COMMON GAMEFILE, X, Y, MX, MY, NAME$, PLANET$, ITEM$
SCREEN 8
CLS
SELECTOR = 1
LOCATE 11, 30: COLOR 15: PRINT "    SAVE PROGRESS"
LOCATE 13, 30: COLOR 8: PRINT "     CANCEL PROGRESS"


ON KEY(11) GOSUB UP
ON KEY(14) GOSUB DOWN
KEY(0) ON

DO
LOOP UNTIL INKEY$ = " "
IF SELECTOR = 1 THEN GOTO SAVEGAME
IF SELECTOR = 2 THEN GOTO COMPLETE




UP:
KEY(0) OFF
IF SELECTOR = 1 THEN KEY(0) ON: PLAY "T100MLL16GC": RETURN
SELECTOR = 1
LOCATE 11, 30: COLOR 15: PRINT "    SAVE PROGRESS"
LOCATE 13, 30: COLOR 8: PRINT "     CANCEL PROGRESS"
BEEP: KEY(0) ON: RETURN

DOWN:
KEY(0) OFF
IF SELECTOR = 2 THEN KEY(0) ON: PLAY "T100MLL16GC": RETURN
SELECTOR = 2
LOCATE 11, 30: COLOR 8: PRINT "     SAVE PROGRESS"
LOCATE 13, 30: COLOR 15: PRINT "    CANCEL PROGRESS"
BEEP: KEY(0) ON: RETURN

SAVEGAME:
SOUND 3000, 10
IF GAMEFILE = 1 THEN GOTO SAVE1
IF GAMEFILE = 2 THEN GOTO SAVE2
IF GAMEFILE = 3 THEN GOTO SAVE3

SAVE1:
OPEN "FILE1" FOR OUTPUT AS #1
PRINT #1, NAME$
PRINT #1, X
PRINT #1, Y
PRINT #1, MX
PRINT #1, MY
PRINT #1, PLANET$
PRINT #1, ITEM$
CLOSE #1
GOTO COMPLETE

SAVE2:
OPEN "FILE2" FOR OUTPUT AS #1
PRINT #1, NAME$
PRINT #1, X
PRINT #1, Y
PRINT #1, MX
PRINT #1, MY
PRINT #1, PLANET$
PRINT #1, ITEM$
CLOSE #1
GOTO COMPLETE

SAVE3:
OPEN "FILE3" FOR OUTPUT AS #1
PRINT #1, NAME$
PRINT #1, X
PRINT #1, Y
PRINT #1, MX
PRINT #1, MY
PRINT #1, PLANET$
PRINT #1, ITEM$
CLOSE #1
GOTO COMPLETE

COMPLETE:
CLS
LOCATE 11, 30: COLOR 15: INPUT "PLAY AGAIN"; DECISION$
IF UCASE$(LEFT$(DECISION$, 1)) = "Y" THEN CHAIN "DATALOAD.BAS"
CLS : SYSTEM

