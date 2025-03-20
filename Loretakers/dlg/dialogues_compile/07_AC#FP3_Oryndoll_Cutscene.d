// Dialogue Oryndoll elder brain

BEGIN ~AC#FP3EB~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN hello_0
SAY @0
IF ~~ THEN REPLY @1 GOTO say_nothing_01 
IF ~~ THEN REPLY @2 + yes_01
IF ~~ THEN REPLY @3 GOTO kill_ya
IF ~~ THEN REPLY @4 GOTO kill_ya
IF ~~ THEN REPLY @5 + kill_ya
END

		
			IF ~~ THEN BEGIN kill_ya
			SAY @6
			IF ~~ THEN DO ~SetGlobal("AC#Braintransceiver","GLOBAL",2)
			AddJournalEntry(@100012,QUEST)
			ClearAllActions()
			StartCutSceneMode()
			StartCutScene("AC#FPCT9")~ EXIT 
			END
			
			IF ~~ THEN BEGIN caught
			SAY @7
			IF ~~ THEN + kill_ya 
			END

	IF ~~ THEN BEGIN say_nothing_01
	SAY @8
	IF ~~ THEN REPLY @9 GOTO caught
	IF ~~ THEN REPLY @10 GOTO caught
	IF ~~ THEN REPLY @11 GOTO send_skull
	IF ~~ THEN REPLY @12 GOTO kill_ya
	IF ~~ THEN REPLY @13 GOTO kill_ya
	END

	IF ~~ THEN BEGIN yes_01
	SAY @14
	IF ~~ THEN REPLY @9 GOTO caught
	IF ~~ THEN REPLY @10 GOTO caught
	IF ~~ THEN REPLY @11 GOTO send_skull
	IF ~~ THEN REPLY @12 GOTO kill_ya
	IF ~~ THEN REPLY @13 GOTO kill_ya
	END
	
		IF ~~ THEN BEGIN send_skull
	SAY @15
	IF ~~ THEN REPLY @16 GOTO caught
	IF ~~ THEN REPLY @17 + kill_ya
	IF ~~ THEN REPLY @18 GOTO kill_ya
	END
