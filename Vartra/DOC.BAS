START:
SCREEN 0: CLS
KEY 15, CHR$(0) + CHR$(28)
KEY 16, CHR$(32) + CHR$(28)
KEY 17, CHR$(64) + CHR$(28)
KEY 18, CHR$(96) + CHR$(28)
ON KEY(15) GOSUB CONTINUE
ON KEY(16) GOSUB CONTINUE
ON KEY(17) GOSUB CONTINUE
ON KEY(18) GOSUB CONTINUE

LOCATE 1, 34: COLOR 9: PRINT "Vartra's Bell"
LOCATE 3, 4: COLOR 12: PRINT "Summary-"
LOCATE 4, 4: COLOR 14: PRINT "Vartra's Bell is an adventure game that will take many hours to play. The"
LOCATE 5, 4: PRINT "player will travel around the imaginary country of Tiwarel as he searches"
LOCATE 6, 4: PRINT "for a legendary bell that will bring peace to the land. The player must"
LOCATE 7, 4: PRINT "meet many people, fight many monsters, and find many items to succeed and"
LOCATE 8, 4: PRINT "complete the quest."
LOCATE 10, 4: COLOR 12: PRINT "Press Enter to continue..."
GOSUB SUSPEND
CLS
LOCATE 1, 34: COLOR 9: PRINT "Vartra's Bell"
LOCATE 3, 4: COLOR 12: PRINT "Begin Game-"
LOCATE 4, 4: COLOR 14: PRINT "Open the icon labled 'Vartra' to start the game. You will see the title"
LOCATE 5, 4: PRINT "screen. Press enter. You will see the file select screen. If you select"
LOCATE 6, 4: PRINT "an empty file, you can begin a new quest. Or you can select a named file"
LOCATE 7, 4: PRINT "to continue a previously started game. Enter the number of the quest you"
LOCATE 8, 4: PRINT "wish to play (1, 2, or 3). At the file select screen, if you would like"
LOCATE 9, 4: PRINT "to exit the game, press the [Esc] button."
LOCATE 11, 4: PRINT "SPECIAL NOTE: If you press 4, you can delete the contents of any file"
LOCATE 12, 4: PRINT "so that you can begin a new quest in that file."
LOCATE 14, 4: COLOR 12: PRINT "Press Enter to continue..."
GOSUB SUSPEND
CLS

LOCATE 1, 34: COLOR 9: PRINT "Vartra's Bell"
LOCATE 3, 4: COLOR 12: PRINT "Display-"
LOCATE 4, 4: COLOR 14: PRINT "The main viewport for the game is in a large window which occupies most"
LOCATE 5, 4: PRINT "of the screen. It is through this viewport that you will explore the land"
LOCATE 6, 4: PRINT "of Tiwarel. Your current weapon is displayed in a small window at the"
LOCATE 7, 4: PRINT "left. Another window displays your lifemeter, which measures the vitality"
LOCATE 8, 4: PRINT "of your character. If the red portion of the meter is depleted, you will"
LOCATE 9, 4: PRINT "die."
LOCATE 11, 4: COLOR 12: PRINT "Press Enter to see a sample display screen..."
GOSUB SUSPEND
SCREEN 13: CLS
DIM PIC(1 TO 16383)
DEF SEG = VARSEG(PIC(1))
BLOAD "DOC1.pic", VARPTR(PIC(1))
DEF SEG
PUT (0, 0), PIC, OR
GOSUB SUSPEND
SCREEN 0: WIDTH 80: CLS
LOCATE 1, 34: COLOR 9: PRINT "Vartra's Bell"
LOCATE 3, 4: COLOR 12: PRINT "Controls-"
LOCATE 4, 4: COLOR 14: PRINT "The arrow keys move your character up, left, down, or right. The right"
LOCATE 5, 4: PRINT "[Ctrl] button will cause your character to throw his weapon. The"
LOCATE 6, 4: PRINT "[Spacebar] will change the lifemeter display to the item display."
LOCATE 7, 4: PRINT "When the item display is visible, use the right [Shift] button to"
LOCATE 8, 4: PRINT "switch to a different item (the selected item will be marked with"
LOCATE 9, 4: PRINT "an orange triangle). When the right [Alt] button is pressed, the"
LOCATE 10, 4: PRINT "selected item will be used. If the 'P' key is pressed, the game"
LOCATE 11, 4: PRINT "will pause. Press another key to resume."
LOCATE 13, 4: PRINT "SPECIAL NOTE: The [NumLock] and [CapsLock] must be turned off"
LOCATE 14, 4: PRINT "for the controls to work."
LOCATE 16, 4: COLOR 12: PRINT "Press Enter to see a sample display screen..."
GOSUB SUSPEND
SCREEN 13: CLS
DIM PIC2(1 TO 16383)
DEF SEG = VARSEG(PIC2(1))
BLOAD "DOC2.pic", VARPTR(PIC2(1))
DEF SEG
PUT (0, 0), PIC2, OR
GOSUB SUSPEND
SCREEN 0: WIDTH 80: CLS
LOCATE 1, 34: COLOR 9: PRINT "Vartra's Bell"
LOCATE 3, 4: COLOR 12: PRINT "Other Stuff-"
LOCATE 4, 4: COLOR 14: PRINT "You can collect items (key, heart, coin, treasure chest) by moving"
LOCATE 5, 4: PRINT "into them. You can read a sign or engraved tablet by moving into it. You"
LOCATE 6, 4: PRINT "can also talk to people you meet by moving onto them. Locks can be opened"
LOCATE 7, 4: PRINT "only if you have a key. Each key can only be used once. Every heart that"
LOCATE 8, 4: PRINT "you collect with restore a portion of your lifemeter. After every castle"
LOCATE 9, 4: PRINT "that you conquer, your lifemeter will grow, making you stronger."
LOCATE 11, 4: COLOR 12: PRINT "Press Enter to continue..."
GOSUB SUSPEND
CLS
LOCATE 1, 34: COLOR 9: PRINT "Vartra's Bell"
LOCATE 3, 4: COLOR 12: PRINT "Programmer's Info-"
LOCATE 4, 4: COLOR 14: PRINT "Vartra's Bell was written using Microsoft QuickBasic v7.1"
LOCATE 5, 4: PRINT "It uses a VGA 256-color screen mode (320 x 200 pixels)."
LOCATE 6, 4: PRINT "To be operated in Windows, the Screen property tab in the 'vartra.bat'"
LOCATE 7, 4: PRINT "file should have the option 'Full-screen mode' selected. Do not"
LOCATE 8, 4: PRINT "change this."
LOCATE 10, 4: PRINT "The game will be available for purchase at the low, low price of $4.00."
LOCATE 11, 4: PRINT "For an additional $1.00, I will throw in a special hint & map"
LOCATE 12, 4: PRINT "package, which includes information on the location of castles, caves,"
LOCATE 13, 4: PRINT "items, and treasures, plus full-color maps for every area!"
LOCATE 15, 4: COLOR 12: PRINT "Press Enter to continue..."
GOSUB SUSPEND
OPTIONS:
CLS
LOCATE 1, 34: COLOR 9: PRINT "Vartra's Bell"
LOCATE 3, 4: COLOR 12: PRINT "Select an option-"
LOCATE 4, 4: COLOR 14: PRINT "1: Review documentation"
LOCATE 5, 4: PRINT "2: Print documentation"
LOCATE 6, 4: PRINT "3: Play game"
LOCATE 7, 4: PRINT "4: Exit to Windows"
LOCATE 9, 4: PRINT "(You can open the 'Doc' icon to return to this documentation)"
INJACK:
DO: JACK$ = INKEY$: LOOP UNTIL JACK$ <> ""
IF JACK$ = "1" THEN CLEAR : GOTO START
IF JACK$ = "2" THEN GOTO PRINTDOC
IF JACK$ = "3" THEN CLEAR : CHAIN "TITLE.BAS"
IF JACK$ = "4" THEN CLS : SYSTEM
GOTO INJACK

SUSPEND:
KEY(0) ON
WHILE Z = 0: WEND
Z = 0: KEY(0) OFF
RETURN
CONTINUE:
Z = 1: RETURN

PRINTDOC:
ON ERROR GOTO HARDERROR
CLS
LOCATE 1, 1: COLOR 14: PRINT "Get your printer ready..."
LOCATE 2, 1: COLOR 14: PRINT "Press Enter to continue..."
GOSUB SUSPEND
OPEN "VARTRA.DOC" FOR INPUT AS #1
WHILE DOC$ <> "END OF DOCUMENT"
INPUT #1, DOC$
LPRINT DOC$
WEND
GOTO OPTIONS

HARDERROR:
CLS : COLOR 7: PRINT "Hardware Error: exiting..."
TIME = TIMER + 1.5
WHILE TIME > TIMER: WEND
CLS : SYSTEM

