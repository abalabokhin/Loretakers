BEGIN ~AC#FPGHO~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0 
  SAY @0 
  =
  @1
  IF ~PartyHasItem("AC#FPROS")
  !Dead("AC#FPSUN")~ THEN REPLY @2 + have_rose
  IF ~Dead("AC#FPSUN")~ THEN REPLY @3 + lovers_dead
  IF ~~ THEN REPLY @4 + leave_me_be
END

	IF ~~ THEN BEGIN have_rose
	SAY @5
	IF ~~ THEN REPLY @6 GOTO hes_alive
	IF ~~ THEN REPLY @7 GOTO hes_alive
	IF ~~ THEN REPLY @8 GOTO hes_alive
	END
	
		IF ~~ THEN BEGIN hes_alive
		SAY @9
		IF ~~ THEN REPLY @10 DO ~TakePartyItem("AC#FPROS") DestroyItem("AC#FPROS")~ GOTO give_rose
		IF ~~ THEN REPLY @11  DO ~TakePartyItem("AC#FPROS") DestroyItem("AC#FPROS")~ GOTO give_rose
		IF ~~ THEN REPLY @12 GOTO give_rose_reward
		END
		
				IF ~~ THEN BEGIN give_rose_reward
				SAY @13
				IF ~~ THEN REPLY @10 DO ~TakePartyItem("AC#FPROS") DestroyItem("AC#FPROS")~ GOTO give_rose
				IF ~~ THEN REPLY @11 DO ~TakePartyItem("AC#FPROS") DestroyItem("AC#FPROS")~ GOTO give_rose
				IF ~~ THEN REPLY @14 GOTO leave_me_be
				END
		
			IF ~~ THEN BEGIN give_rose
			SAY @15
			IF ~~ THEN DO ~SetGlobal("AC#FPSuneLoveStory","GLOBAL",10)
			EraseJournalEntry(@110001)
			AddJournalEntry(@110002,QUEST)
			CreateVisualEffectObject("spsdimpa",Myself)
			Kill(Myself)~ EXIT 
			END
			
			IF ~~ THEN BEGIN lovers_dead
			SAY @16
			IF ~~ THEN DO ~ChangeAnimation("AC#FPWRA")
			Enemy()~ EXIT 
			END

	IF ~~ THEN BEGIN leave_me_be
	SAY @17
	IF ~~ THEN EXIT 
	END

IF ~True()~ THEN BEGIN 2
   SAY @0 
  =
  @1
  IF ~PartyHasItem("AC#FPROS")
  !Dead("AC#FPSUN")~ THEN REPLY @2 + have_rose
  IF ~Dead("AC#FPSUN")~ THEN REPLY @3 + lovers_dead
  IF ~~ THEN REPLY @4 + leave_me_be
END
