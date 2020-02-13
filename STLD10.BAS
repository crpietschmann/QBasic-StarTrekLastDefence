'   |---------------------------------------------------|
'   |           Star Trek: Last Defence v1.0            |
'   |---------------------------------------------------|
'   |           Created by Chris Pietschmann            |
'   |    You can contact me at chris@pietschsoft.com if |
'   |    you have any questions or comments, or if you  |
'   |    just want a more recent version of this game.  |
'   |    This is Freeware, but please don't make minor  |
'   |    changes and pass it as your own.  This is the  |
'   |    second version of my first program.            |
'   |---------------------------------------------------|
'   |   This Game Was Made With MS-DOS QBasic v1.0      |
'   |---------------------------------------------------|
'   | This might not work in another Basic Programming  |
'   |              invironment other than               |
'   |                MS-DOS QBasic v1.1                 |
'   |---------------------------------------------------|
'   |-|||||||||||||||||||||||||||||||||||||||||||||||||-|
'   |-||||||||||||||||PRESS F5 TO RUN||||||||||||||||||-|
'   |-|||||||||||||||||||||||||||||||||||||||||||||||||-|
'   |---------------------------------------------------|
DECLARE SUB COLORS ()
DECLARE SUB TITLE ()
DECLARE SUB THEME ()
DECLARE SUB INTRO ()
DECLARE SUB stars ()
DECLARE SUB Credits ()

CLS
SCREEN 13   'Sets screen mode to screen 13
stars
TITLE
THEME
Credits
SLEEP

CLS
SCREEN 12   'Sets screen mode to screen 12
stars
INTRO
SLEEP

1111 : CLS
stars
LOCATE 9, 15: COLOR 7: INPUT "What rank do you wish to be"; R$
IF R$ = "" GOTO 1111
1112 LOCATE 10, 15: COLOR 7: INPUT "What is your last name"; N$
IF N$ = "" GOTO 1112
1109 LOCATE 11, 15: COLOR 7: INPUT "Who do you want to be your first officer"; F$
IF F$ = "" GOTO 1109
SLEEP 1

CLS
stars
COLORS

CLS
stars
SLEEP 2
LOCATE 9, 20: BEEP: COLOR 2: PRINT R$; " your presents is needed on the bridge."
1116 LOCATE 11, 13: COLOR 7: INPUT "Do you want to goto the (B)ridge, (S)leep more, or (Q)uit?", A$
IF A$ = "S" THEN GOTO 1
IF A$ = "s" THEN GOTO 1
IF A$ = "Q" THEN END
IF A$ = "q" THEN END
IF A$ = "B" THEN GOTO 3
IF A$ = "b" THEN GOTO 3
IF A$ = "" GOTO 1116

1 CLS
stars
PLAY "MBAC"
LOCATE 7, 25: PRINT "Door Bell."
1117 LOCATE 10, 9: COLOR 7: INPUT "Do you want to (A)nswer door, go back to (S)leep, or (Q)uit"; A$
IF A$ = "A" THEN GOTO 2
IF A$ = "S" THEN GOTO 1
IF A$ = "Q" THEN END
IF A$ = "a" THEN GOTO 2
IF A$ = "s" THEN GOTO 1
IF A$ = "q" THEN END
IF A$ = "" GOTO 1117

2 X% = INT(RND * 3) + 1
IF X% = 2 THEN GOTO 1105
IF X% = 1 THEN GOTO 1106
IF X% = 3 THEN GOTO 1107
1105 LOCATE 12, 20: COLOR 2: PRINT R$; " you are needed on the bridge."
GOTO 1108
1106 LOCATE 12, 20: COLOR 2: PRINT "Your are needed on the bridge, "; R$
GOTO 1108
1107 LOCATE 12, 20: COLOR 2: PRINT R$; " "; N$; " your presents is needed on the bridge."
GOTO 1108
1108 LOCATE 14, 20: COLOR 7: INPUT "Should you goto the (B)ridge, or (Q)uit"; A$
IF A$ = "B" THEN GOTO 3
IF A$ = "Q" THEN END
IF A$ = "b" THEN GOTO 3
IF A$ = "q" THEN END
IF A$ = "" GOTO 1108

3 CLS
stars
LOCATE 1, 20: COLOR 2: PRINT ; R$; " "; N$; " is on the bridge."
SLEEP 1
LOCATE 5, 10: COLOR 9: PRINT "STAR FLEET COMMAND:  "; R$; " a Borg cube is entering Federation space"
LOCATE 6, 32: COLOR 9: PRINT "close to where you are."
SLEEP 3
LOCATE 10, 20: SLEEP 2: PRINT ; F$; ": "; R$; " the Borg Cube is approaching."
SLEEP 2
LOCATE 11, 20: PRINT ; F$; ": It will be here in five minutes."
SLEEP 2
1118 LOCATE 13, 20: COLOR 7: INPUT "Should we (H)ail, on (V)iewer, or (Q)uit"; A$
IF A$ = "H" THEN GOTO 6
IF A$ = "Q" THEN END
IF A$ = "V" THEN GOTO 4
IF A$ = "h" THEN GOTO 6
IF A$ = "q" THEN END
IF A$ = "v" THEN GOTO 4
IF A$ = "" GOTO 1118

4 CLS
stars
'borg cube
LOCATE 1, 30: COLOR 7: PRINT "Main Viewer"
LOCATE 2, 20: COLOR 7: PRINT "|---------------------------|"
LOCATE 3, 25: COLOR 15: PRINT "����������"
LOCATE 3, 20: COLOR 7: PRINT "|": LOCATE 3, 48: COLOR 7: PRINT "|"
LOCATE 4, 25: COLOR 15: PRINT "���BORG���"
LOCATE 4, 20: COLOR 7: PRINT "|": LOCATE 4, 48: COLOR 7: PRINT "|"
LOCATE 5, 25: COLOR 15: PRINT "����������"
LOCATE 5, 20: COLOR 7: PRINT "|": LOCATE 5, 48: COLOR 7: PRINT "|"
LOCATE 6, 25: COLOR 15: PRINT "����������"
LOCATE 6, 20: COLOR 7: PRINT "|": LOCATE 6, 48: COLOR 7: PRINT "|"
LOCATE 7, 20: COLOR 7: PRINT "|": LOCATE 7, 48: COLOR 7: PRINT "|"
LOCATE 8, 20: COLOR 7: PRINT "|---------------------------|"

LOCATE 9, 20: COLOR 2: PRINT "ENSIGN: Should we hail them?"
1119 LOCATE 11, 20: COLOR 7: INPUT "Should we (H)ail, (N)o hail, or (Q)uit"; A$
IF A$ = "H" THEN GOTO 6
IF A$ = "N" THEN GOTO 5
IF A$ = "Q" THEN END
IF A$ = "h" THEN GOTO 6
IF A$ = "n" THEN GOTO 5
IF A$ = "q" THEN END
IF A$ = "" GOTO 1119

5 CLS
stars
LOCATE 8, 20: COLOR 2: PRINT R$; " "; N$; " they are hailing us."
1121 LOCATE 10, 20: INPUT "Should we (L)isten, or (Q)uit"; A$
IF A$ = "l" THEN GOTO 7
IF A$ = "L" THEN GOTO 7
IF A$ = "q" THEN END
IF A$ = "Q" THEN END
IF A$ = "" GOTO 1121

6 CLS
stars
COLOR 7: PRINT "What do you want Borg ship?"
SLEEP 2
GOTO 7

7 CLS
stars
SLEEP 1
RANDOMIZE TIMER
X% = INT(RND * 4) + 2
IF X% = 1 THEN GOTO 1100
IF X% = 2 THEN GOTO 1120
IF X% = 3 THEN GOTO 1130
IF X% = 4 THEN GOTO 1110

1100 LOCATE 10, 20: BEEP: COLOR 4: PRINT "RESSISTANCE IS FUTILE."
SLEEP 4
GOTO 50
1110 LOCATE 10, 20: COLOR 4: BEEP: PRINT "YOU WILL BE ASSIMALATED."
SLEEP 4
GOTO 50
1120 LOCATE 10, 20: COLOR 4: BEEP: PRINT "YOU WILL BE ASSIMALATED."
SLEEP 4
GOTO 50
1130 LOCATE 10, 20: COLOR 4: BEEP: PRINT "RESSISTANCE IS FUTILE."
SLEEP 4
GOTO 50

50 LOCATE 13, 20: COLOR 7: INPUT "Should we (A)ttack, (S)end away team, or (Q)uit"; A$
IF A$ = "A" THEN GOTO 9
IF A$ = "a" THEN GOTO 9
IF A$ = "q" THEN END
IF A$ = "Q" THEN END
IF A$ = "S" THEN GOTO 8
IF A$ = "" GOTO 50

8 CLS
stars
LOCATE 9, 10: COLOR 2: PRINT "TRANSPORTER ROOM:  The away team was succesfully transported."
SLEEP 2
LOCATE 10, 5: PRINT "AWAYTEAM:  "; R$; " , it doesn't look as though they are going to assimalate us."
SLEEP 1
LOCATE 11, 5: PRINT "AWAYTEAM:  They don't even look like they care that we are here."
SLEEP 5
CLS
stars
SOUND 500, 40
SOUND 400, 20
RANDOMIZE TIMER
X% = (RND * 2) + 1
IF X% = 1 THEN GOTO 1140
IF X% = 2 THEN GOTO 1150
1140 LOCATE 7, 20: COLOR 2: PRINT "AWAYTEAM: OH NO!!! AHHHH!"
SLEEP 3
GOTO 51
1150 LOCATE 7, 20: COLOR 2: PRINT "AWAYTEAM: MY GOD!!!"
SLEEP 3
GOTO 51

51
X% = (RND * 2) + 2
IF X% = 1 THEN GOTO 1160
IF X% = 2 THEN GOTO 1170
1160 LOCATE 8, 20: COLOR 7: PRINT "The awayteam was killed by the Borg."
SLEEP 4
GOTO 52
1170 LOCATE 8, 20: COLOR 7: PRINT "The awayteam was brutaly murdered by the borg."
SLEEP 4
GOTO 52

52 LOCATE 10, 20: COLOR 7: INPUT "Should we (A)ttack, (S)end another away team, or (Q)uit"; A$
IF A$ = "a" THEN GOTO 9
IF A$ = "A" THEN GOTO 9
IF A$ = "s" THEN GOTO 8
IF A$ = "S" THEN GOTO 8
IF A$ = "Q" THEN END
IF A$ = "q" THEN END
IF A$ = "" GOTO 52

9 CLS
stars
LOCATE 5, 20: COLOR 2: PRINT R$; " shields are up."
1122 LOCATE 6, 20: COLOR 7: INPUT "Should we fire (T)orpedos, or fire (P)hasers"; A$
IF A$ = "T" THEN GOTO 10
IF A$ = "t" THEN GOTO 10
IF A$ = "p" THEN GOTO 11
IF A$ = "P" THEN GOTO 11
IF A$ = "Q" THEN END
IF A$ = "q" THEN END
IF A$ = "" GOTO 1122

10 CLS
'fire  torpedos
stars
LOCATE 7, 20: COLOR 2: PRINT "Engineering:  Torpedo bays loaded and are now fireing."
SLEEP 2
X% = (RND * 3) + 3
IF X% = 1 THEN GOTO 1180
IF X% = 2 THEN GOTO 1190
IF X% = 3 THEN GOTO 1000
1180 LOCATE 8, 20: COLOR 2: PRINT ; R$; " it was a direct hit."
SLEEP 6
LOCATE 9, 20: COLOR 2: PRINT ; R$; N$; " they are fireing weapons."
SLEEP 4: LOCATE 10, 4: COLOR 7: PRINT "The Galactica has been blown up by a direct hit to the front deflector."
SLEEP 3: LOCATE 11, 20: COLOR 4: PRINT "GAME OVER"
1113 LOCATE 13, 20: COLOR 4: INPUT "(P)lay again, (Q)uit"; A$
IF A$ = "P" THEN GOTO 1111
IF A$ = "p" THEN GOTO 1111
IF A$ = "q" THEN END
IF A$ = "Q" THEN END
IF A$ = "" GOTO 1113

1190 LOCATE 8, 20: COLOR 2: PRINT ; R$; " it was a clear miss."
SLEEP 5: GOTO 9
1000 LOCATE 8, 20: COLOR 2: PRINT "The Borg cube has been obliterated."
GOTO 12

11 CLS
stars
'FIRE PHASERS
LOCATE 6, 20: COLOR 2: PRINT R$; ", now fireing phasers."
X% = (RND * 4) + 3
IF X% = 1 THEN GOTO 1101
IF X% = 2 THEN GOTO 1102
IF X% = 3 THEN GOTO 1103
IF X% = 4 THEN GOTO 1104
1101 LOCATE 8, 20: COLOR 2: PRINT ; R$; " there was no effect."
SLEEP 5: GOTO 9

1102 LOCATE 8, 20: COLOR 2: PRINT ; R$; " it was a direct hit."
SLEEP 3: LOCATE 9, 20: COLOR 2: PRINT ; R$; " they're returning fire."
SLEEP 3: LOCATE 10, 20: COLOR 7: PRINT "The Galactica has been destroyed."
LOCATE 11, 20: PRINT "You failed in protecting the federation."
LOCATE 12, 20: COLOR 4: PRINT "GAME OVER"
1114 LOCATE 14, 20: INPUT "(P)lay again, (Q)uit"; A$
IF A$ = "P" THEN GOTO 1111
IF A$ = "p" THEN GOTO 1111
IF A$ = "q" THEN END
IF A$ = "Q" THEN END
IF A$ = "" GOTO 1114

1103
LOCATE 8, 20: COLOR 2: PRINT ; R$; " for some reason it was destroyed with a direct hit."
SLEEP 4: GOTO 12
1104
LOCATE 8, 20: COLOR 2: PRINT "It was a direct hit, but it didn't seem to effect them at all."
SLEEP 4: GOTO 9

12 CLS
stars
LOCATE 3, 20: COLOR 7: INPUT "Should we (I)nform Star Fleet Command, (N)ot inform, or (Q)uit"; A$
IF A$ = "I" THEN GOTO 13
IF A$ = "i" THEN GOTO 13
IF A$ = "n" THEN GOTO 14
IF A$ = "N" THEN GOTO 14
IF A$ = "q" THEN END
IF A$ = "Q" THEN END
IF A$ = "" GOTO 12

13
CLS
stars
LOCATE 1, 20: COLOR 2: PRINT "They are responding."
LOCATE 3, 20: COLOR 9: PRINT "Star Fleet Command:   Congratulations!!!"
GOTO 15

14 CLS
stars
LOCATE 1, 20: COLOR 2: PRINT "There is a message comeing from Star Fleet Command."
SLEEP 1
LOCATE 5, 20: COLOR 9: PRINT ; R$; " congratulations for destroying the Borg cube."

15 CLS
stars
LOCATE 3, 15: COLOR 9: PRINT "Wait for orders."
SLEEP 2
LOCATE 5, 20: COLOR 2: PRINT ; R$; " there is a Klingon transport approching, 5 light years away."
1115 LOCATE 7, 20: COLOR 7: INPUT "(G)o investagate, (T)rack it, or (Q)uit"; A$
IF A$ = "G" THEN GOTO 16
IF A$ = "g" THEN GOTO 16
IF A$ = "t" THEN GOTO 17
IF A$ = "T" THEN GOTO 17
IF A$ = "q" THEN END
IF A$ = "Q" THEN END
IF A$ = "" GOTO 1115

16 CLS
stars
LOCATE 5, 20: COLOR 7: PRINT "It happened to be a decoy, and while you were investigateing"
LOCATE 6, 20: PRINT "A Borg cube reached Earth and destroyed it.  "
LOCATE 7, 20: PRINT "The United Federation of Planets is no more."
LOCATE 8, 20: COLOR 4: PRINT "GAME OVER"
1123 LOCATE 15, 20: COLOR 8: INPUT "(P)lay again, (Q)uit", S$
IF A$ = "P" THEN GOTO 1111
IF A$ = "p" THEN GOTO 1111
IF A$ = "q" THEN END
IF A$ = "Q" THEN END
IF A$ = "" GOTO 1123

17
CLS
stars
LOCATE 1, 20: COLOR 2: PRINT R$; ", we are now tracking it with long range sensors."
SLEEP 2

18
LOCATE 4, 20: COLOR 9: PRINT "There is another Borg cube entering federation space"
LOCATE 5, 20: PRINT "from Klingon space.  They don't seem to care about the Klingons"
LOCATE 6, 20: PRINT "for the moment.  You are to intercept and destroy the Borg cube."

19
CLS
stars
1124 LOCATE 3, 20: COLOR 7: INPUT "persue at warp (1 - 9)"; A$
IF A$ = "1" THEN S% = 10
IF A$ = "2" THEN S% = 9
IF A$ = "3" THEN S% = 8
IF A$ = "4" THEN S% = 7
IF A$ = "5" THEN S% = 6
IF A$ = "6" THEN S% = 5
IF A$ = "7" THEN S% = 4
IF A$ = "8" THEN S% = 3
IF A$ = "9" THEN S% = 2
IF A$ = "" THEN GOTO 1124
CLS : LOCATE 5, 25: COLOR 2: PRINT "We are no traveling at warp "; S%; "."
SLEEP S%

20
CLS
stars
LOCATE 6, 15: COLOR 2: PRINT F$; ": We are approaching the Borg Cube."
LOCATE 7, 20: PRINT R$; " have droped out of warp."
21 LOCATE 9, 20: COLOR 7: INPUT "(H)ail the borg cube, (A)ttack it, (Q)uit"; A$
IF A$ = "H" THEN GOTO 53
IF A$ = "h" THEN GOTO 53
IF A$ = "A" THEN GOTO 54
IF A$ = "a" THEN GOTO 54
IF A$ = "Q" THEN END
IF A$ = "q" THEN END
IF A$ = "" THEN GOTO 21

53 CLS
stars
COLOR 7: PRINT "Borg ship what do you want?"
COLOR 4: LOCATE 5, 15: PRINT "RESSISTANCE IS FUTILE"
LOCATE 6, 15: PRINT "YOU WILL BE ASSIMALATED"
CLS
GOTO 21


54 CLS
stars
INPUT "Shoulf we use (P)hasers, or (T)orpedos, (Q)uit", A$
IF A$ = "P" THEN GOTO 55
IF A$ = "T" THEN GOTO 58
IF A$ = "t" THEN GOTO 58
IF A$ = "p" THEN GOTO 55
IF A$ = "Q" THEN END
IF A$ = "q" THEN END
IF A$ = "" THEN GOTO 54

55
A# = INT(rnd1 * 2) + 1
IF A$ = "1" THEN GOTO 56 ELSE GOTO 57

56
CLS
COLOR 2: PRINT "Now fireing phasers..."
LOCATE 5, 15: PRINT "It was a clear miss..."
SLEEP 1
LOCATE 6, 15: PRINT "They are fireing back..."
SOUND 40, 9
CLS
PRINT "They have destroyed your ship..."
70 LOCATE 8, 15: INPUT "(P)lay again, or (Q)uit", A$
IF A$ = "P" THEN GOTO 1111
IF A$ = "p" THEN GOTO 1111 ELSE END
IF A$ = "" THEN GOTO 70

57
CLS
COLOR 2: PRINT "Now fireing phasers..."
LOCATE 5, 15: PRINT "It was a direct hit..."
LOCATE 6, 15: PRINT "The borg cube has been destroyed!!"
GOTO 61

58
A# = INT(rnd1 * 2) + 1
IF A$ = "1" THEN GOTO 59 ELSE GOTO 60

59
CLS
COLOR 2: PRINT "Now fireing torpedos..."
PRINT "It was a direct hit..."
PRINT "The Borg cube has been destroyed!!!"
GOTO 61

60
CLS
COLOR 2: PRINT "Now fireing torpedos..."
LOCATE 5, 15: PRINT "It was a direct hit..."
SLEEP 1
LOCATE 6, 15: PRINT "It didn't seem to have any affect..."
LOCATE 7, 15: PRINT "They are fireing back..."
LOCATE 8, 15: COLOR 7: PRINT "The borg had a direct hit to the main diflector, and the ship has blown up..."
INPUT "(P)lay again, (Q)uit", A$
IF A$ = "P" THEN GOTO 1111
IF A$ = "p" THEN GOTO 1111 ELSE END

61
CLS 0
BEEP
BEEP
LOCATE 4, 15: PRINT "You have successfully destroyed all the borg ships in this part of space!!"
LOCATE 6, 15: INPUT "Do you want to play again"; A$
IF A$ = "y" THEN GOTO 1111
IF A$ = "yes" THEN GOTO 1111
IF A$ = "Y" THEN GOTO 1111
IF A$ = "YES" THEN GOTO 1111 ELSE SYSTEM



SUB COLORS
LOCATE 15, 20: COLOR 9: PRINT "This color is Star Fleet Command talking."
SLEEP 1
LOCATE 14, 20: COLOR 4: PRINT "This color is your enemies talking."
SLEEP 1
LOCATE 13, 20: COLOR 2: PRINT "This color is a member of your crew talking."
SLEEP 1
LOCATE 12, 20: COLOR 7: PRINT "This color is the computer talking."
SLEEP 2

END SUB

SUB Credits

LOCATE 15, 25: COLOR 7: PRINT "   Chris Pietschmann"
LOCATE 16, 38: PRINT "                1996"
SLEEP 2
LOCATE 18, 20: PRINT "         You can contact us at"
LOCATE 19, 20: PRINT "         chris@pietschsoft.com"

END SUB

SUB INTRO
LOCATE 10, 18: COLOR 15: PRINT "You are in command of the starship Galactica."
LOCATE 11, 16: PRINT "The U.S.S. Galactica is a galaxy class starship."
LOCATE 12, 6: PRINT "You are the Federations last defence against the Borg and the Klingons."
LOCATE 13, 10: PRINT "And the borg are trying to take over Federation space again."
LOCATE 14, 14: PRINT "Even though it didn't work the last time they tried."
LOCATE 20, 18: COLOR 4: PRINT "REMEMBER: YOU ARE THE LAST HOPE OF DEFENCE."

END SUB

SUB stars

FOR i = 1 TO 300          ' Sets number of stars to 300
RANDOMIZE TIMER           ' Makes chosen numbers totally random
star1 = INT(RND * 640)    ' Picks a number between 1 and 640
star2 = INT(RND * 940)    ' Picks a number between 1 and 940
star3 = INT(RND * 640)    ' Picks a number between 1 and 640
star4 = INT(RND * 940)    ' Picks a number between 1 and 940
star5 = INT(RND * 640)    ' Picks a number between 1 and 640
star6 = INT(RND * 940)    ' Picks a number between 1 and 940
PSET (star1, star2), 7    ' Makes dark stars using the numbers star 1 & 2
PSET (star3, star4), 8    ' Makes dim stars using the numbers star 3 & 4
PSET (star5, star6), 15   ' Makes bright stars using the numbers star 5 & 6
NEXT i                    ' Puts 300 dark,dim and bright stars on the screen


END SUB

SUB THEME

PLAY "MBt230l7o3ap24ap24o4cp24o3ap24o4dp24o3ao4p24ep24dp24cp24cp24ep24cp24gp24cp24ep24cp24o3gp24gp24bp24gp24o4cp24o3gp24o4dp24cp24o3fp24fp24ap24fp24o4cp24o3fp24o4cp24o3bp24"
PLAY "MBt230l7o3ap24ap24o4cp24o3ap24o4dp24o3ao4p24ep24dp24cp24cp24ep24cp24gp24cp24ep24cp24o3gp24gp24bp24gp24o4cp24o3gp24o4dp24cp24o3fp24fp24ap24fp24o4cp24o3fp24o4cp24o3bp24"

END SUB

SUB TITLE
LOCATE 8: COLOR 15: PRINT "        STAR TREK: Last Defence"
LOCATE 9: COLOR 9: PRINT "        -----------------------"
LOCATE 10: COLOR 15: PRINT "             VERSION 1.0"
LOCATE 11: COLOR 9: PRINT "             -----------"

END SUB

