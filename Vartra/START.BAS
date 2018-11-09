COMMON PROGRESS$, SPEED, BOOMERANG, MAX, MAN, ROOM, CASTLE, X, Y, PX, PY, FACE$, STEPS, MONEY, KEYS, ITEM$, SOUND$, NAME$, COUNTRY$, SAVEFILE$

SCREEN 13: CLS
COLOR 33
LOCATE 3, 1: PRINT "A strange evil is spreading over the"
COLOR 34
LOCATE 4, 1: PRINT "land of Tiwarel. Swarms of wicked"
COLOR 35
LOCATE 5, 1: PRINT "monsters cover the land, and the"
COLOR 36
LOCATE 6, 1: PRINT "citizens are struck with fear. But"
COLOR 37
LOCATE 7, 1: PRINT "Tiwarel is not without hope..."
COLOR 38
LOCATE 9, 1: PRINT "Legend speaks of an ancient artifact-"
COLOR 39
LOCATE 10, 1: PRINT "a magical bell that has the power to"
COLOR 40
LOCATE 11, 1: PRINT "destroy evil with its majestic tone..."
COLOR 41
LOCATE 13, 1: PRINT "A brave adventurer is needed to search"
COLOR 42
LOCATE 14, 1: PRINT "for the hidden bell. But the quest would"
COLOR 43
LOCATE 15, 1: PRINT "certainly be filled with danger. For"
COLOR 44
LOCATE 16, 1: PRINT "many years, a soul willing to undertake"
COLOR 45
LOCATE 17, 1: PRINT "the task could not be found..."
COLOR 46
LOCATE 19, 1: PRINT "But just recently, "; NAME$; ", a"
COLOR 47
LOCATE 20, 1: PRINT "visitor from the far away land of"
COLOR 50
LOCATE 21, 1: PRINT COUNTRY$; ", has volunteered to "
COLOR 51
LOCATE 22, 1: PRINT "search for the lost bell..."
DO: LOOP UNTIL INKEY$ <> ""
CHAIN "GAME.BAS"

