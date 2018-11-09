COMMON GAMEFILE, X, Y, MX, MY, NAME$, PLANET$, ITEM$
SCREEN 12: CLS
LOCATE 1, 20: COLOR 1: PRINT "INTERGALACTIC CONQUEST IS A WAY OF LIFE!"
LOCATE 2, 20: COLOR 4:             PRINT "              (THE STORY)"
PRINT : COLOR 9
PRINT "Over 600 years ago, a small spacecraft containing six intelligent Aztec settlers"
PRINT "was launched into space from an area just south of Tenochtitlan. The mission of"
PRINT "these 'ancient astronauts' was unknown, their fate uncertain...": PRINT
PRINT "...until now. The year is 2089. Recent UFO sightings have caused panic among the"
PRINT "inhabitants of every planet in the galaxy. Rumors of a great army far beyond"
PRINT "the Milky Way circulate throughout the known universe.": PRINT
PRINT "As each planet prepares for defense against an unknown enemy, the Galactic"
PRINT "Federation of Planets (GFP) takes little incentive. Mike Maelstrom, long time"
PRINT "galactic hero and president of the GFP, spends long hours in his office alone,"
PRINT "working on a solution to the problem.": PRINT
PRINT "The word has just reached GFP headquarters on Jupiter: Pluto, Neptune, and"
PRINT "Uranus have fallen to the unknown conquistadores. Maelstrom can wait no longer."
PRINT "He twists a few final connections in his workshop, and heads to his office..."
FOR ABSORB = 1 TO 1000
BABBLE$ = INKEY$
NEXT ABSORB
COLOR 4: PRINT : PRINT "Press any key to continue..."
DO: LOOP UNTIL INKEY$ <> ""
CLS : COLOR 1
LOCATE 1, 26: PRINT "MEANWHILE, BACK ON EARTH...": COLOR 7: PRINT
PRINT NAME$; " is awakened by his interplanetary telephone."
FOR RINGING = 1 TO 10
SOUND 650, 1: SOUND 480, 1
NEXT RINGING
SOUND 30000, 8
FOR RINGING = 1 TO 10
SOUND 650, 1: SOUND 480, 1
NEXT RINGING
SOUND 30000, 8
GOSUB READY: LOCATE 5, 1
COLOR 7: PRINT UCASE$(NAME$); ": <grumble> Hello."
GOSUB READY: LOCATE 7, 1
COLOR 8: PRINT "MAELSTROM: "; NAME$; ", this is Mike."
GOSUB READY: LOCATE 9, 1
COLOR 7: PRINT UCASE$(NAME$); ": <yawn> Oh, hi Mike! How's it going?"
GOSUB READY: LOCATE 11, 1
COLOR 8: PRINT "MAELSTROM: Not good! The invaders have captured Pluto, Neptune, and Uranus!"
GOSUB READY: LOCATE 13, 1
COLOR 7: PRINT UCASE$(NAME$); ": Oh, no!"
GOSUB READY: LOCATE 15, 1
COLOR 8: PRINT "MAELSTROM: I hate to just dump this on you, but you've got to defeat them."
GOSUB READY: LOCATE 17, 1
COLOR 7: PRINT UCASE$(NAME$); ": Why me?"
GOSUB READY: LOCATE 19, 1
COLOR 8: PRINT "MAELSTROM: Why not? You're strong, intelligent, and courageous. You have as"
PRINT "good a chance as anybody. I would do it myself, if I were younger; my strength"
PRINT "and mind are failing me. Still, I've managed to build a weapon that will help:"
PRINT "the QUARK 2000 spaceship."
GOSUB READY
CLS
COLOR 8: PRINT "MAELSTROM: Will you take the job or not?"
FOR ABSORB = 1 TO 2000: BABBLE$ = INKEY$: NEXT ABSORB
PRINT : COLOR 7: PRINT UCASE$(NAME$); ": "; : INPUT "", YESORNO$
IF UCASE$(LEFT$(YESORNO$, 1)) = "Y" THEN GOTO ACCEPT
SLEEP 1
PRINT : COLOR 8: PRINT "MAELSTROM: Okay. I understand... chicken!"
FOR ABSORB = 1 TO 5000: BABBLE$ = INKEY$: NEXT ABSORB
CLS
SOUND 160, 50
FOR ABSORB = 1 TO 5000: BABBLE$ = INKEY$: NEXT ABSORB
SYSTEM

ACCEPT:
CLS
COLOR 8: PRINT "MAELSTROM: Great! I will have the ship delivered to Earth as soon as possible."
DO
LOCATE 4, 1: COLOR 1: PRINT "Press space bar to begin."
LOCATE 4, 1: COLOR 9: PRINT "Press space bar to begin."
LOCATE 4, 1: COLOR 3: PRINT "Press space bar to begin."
LOCATE 4, 1: COLOR 11: PRINT "Press space bar to begin."
LOOP UNTIL INKEY$ = " "
CHAIN "EARTH.BAS"

READY:
FOR ABSORB = 1 TO 500
BABBLE$ = INKEY$
NEXT ABSORB
DO
LOCATE 28, 1: COLOR 5: PRINT "Press space bar to continue..."
LOCATE 28, 1: COLOR 13: PRINT "Press space bar to continue..."
LOOP UNTIL INKEY$ = " "
LOCATE 28, 1: COLOR 0: PRINT "Press space bar to continue..."
RETURN

