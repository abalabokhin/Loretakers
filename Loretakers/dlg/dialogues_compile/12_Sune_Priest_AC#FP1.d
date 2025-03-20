BEGIN ~AC#FPSUN~

IF ~Global("Need_handkerchief","AC#FP1",1)~ THEN BEGIN hello_need_handkerchief
  SAY @0 
  IF ~~ THEN REPLY @1 EXTERN AC#FPSUN farewell_handkerchief
  IF ~Global("AC#FPKillTheHermit","GLOBAL",1)~ THEN REPLY @2 DO ~SetGlobal("AC#FPSuneLoveStory","GLOBAL",-1) Enemy() ActionOverride("AC#FPCLG",Enemy())~ EXIT
  IF~PartyHasItem("AC#FPHKC")~THEN REPLY @3 EXTERN AC#FPSUN have_handkerchief
END

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @4
  =
  @5
  =
  @6
=

@7 
  IF ~~ THEN REPLY @8 UNSOLVED_JOURNAL @110001 DO ~SetGlobal("AC#FPSuneLoveStory","GLOBAL",1)~ EXTERN AC#FPSUN bye_riddle
  IF ~~ THEN REPLY @9 UNSOLVED_JOURNAL @110001 DO ~SetGlobal("AC#FPSuneLoveStory","GLOBAL",1)~ EXTERN AC#FPSUN bye_riddle
  IF ~~ THEN REPLY @10 UNSOLVED_JOURNAL @110001 DO ~SetGlobal("AC#FPSuneLoveStory","GLOBAL",1)~ EXTERN AC#FPSUN bye_riddle
  IF ~~ THEN REPLY @11 UNSOLVED_JOURNAL @110001 DO ~SetGlobal("AC#FPSuneLoveStory","GLOBAL",1)~ EXTERN AC#FPSUN bye_riddle
  IF ~Global("AC#FPKillTheHermit","GLOBAL",1)~ THEN REPLY @2 DO ~SetGlobal("AC#FPSuneLoveStory","GLOBAL",-1) Enemy() ActionOverride("AC#FPCLG",Enemy())~ EXTERN AC#FPSUN bye_riddle
END

IF ~Global("AC#FPSuneLoveStory","GLOBAL",10)~ THEN BEGIN hello_delivered_rose // from:
  SAY @12 
  IF ~Global("AC#FPKillTheHermit","GLOBAL",1)~ THEN REPLY @2 DO ~SetGlobal("AC#FPSuneLoveStory","GLOBAL",-1) Enemy() ActionOverride("AC#FPCLG",Enemy())~ EXIT
  IF ~Global("AC#FPSuneLoveStory","GLOBAL",10)~THEN REPLY @13 GOTO gave_rose_ghost_dead
  IF ~Global("AC#FPSuneLoveStory","GLOBAL",10)~THEN REPLY @14 GOTO gave_rose_ghost_dead
END

IF ~True()~ THEN BEGIN 2 // from:
  SAY @15
=

@7 
  IF ~~ THEN REPLY @1 EXTERN AC#FPSUN bye_riddle
   IF ~~ THEN REPLY @9 EXTERN AC#FPSUN bye_riddle
  IF ~~ THEN REPLY @10 EXTERN AC#FPSUN bye_riddle
  IF ~~ THEN REPLY @11 EXTERN AC#FPSUN bye_riddle
  IF ~Global("AC#FPKillTheHermit","GLOBAL",1)~ THEN REPLY @2 DO ~SetGlobal("AC#FPSuneLoveStory","GLOBAL",-1) Enemy() ActionOverride("AC#FPCLG",Enemy())~ EXIT
  IF ~Global("AC#FPSuneLoveStory","GLOBAL",10)~THEN REPLY @14 GOTO gave_rose_ghost_dead
END

/*
IF ~~ THEN BEGIN 3
SAY ~She's free...? And her freedom... is mine!~
IF~~ THEN DO ~SetGlobal("AC#FPSuneLoveStory","GLOBAL",11) AddExperienceParty(10000) ActionOverride("AC#FPCLG",Kill(Myself)) Kill(Myself)~ EXIT
END
*/
CHAIN AC#FPSUN bye_riddle
@16
EXIT

CHAIN AC#FPSUN gave_rose_ghost_dead
@17
END
IF~PartyHasItem("AC#FPHKC")~THEN REPLY @3 DO ~TakePartyItem("AC#FPHKC") DestroyItem("AC#FPHKC")~ EXTERN AC#FPSUN have_handkerchief
IF~~THEN REPLY @18 DO ~SetGlobal("Need_handkerchief","AC#FP1",1)~ EXTERN AC#FPSUN farewell_handkerchief

CHAIN AC#FPSUN farewell_handkerchief
@19
EXIT

	CHAIN AC#FPSUN have_handkerchief
	@20
	END
	IF~~THEN REPLY @21 EXTERN AC#FPSUN you_are_in_sewers
	IF~~THEN REPLY @22 EXTERN AC#FPSUN you_are_in_sewers
	IF~~THEN REPLY @23 EXTERN AC#FPSUN you_are_in_sewers
	
		CHAIN AC#FPSUN you_are_in_sewers
		@24
		END
		IF~~THEN REPLY @25 EXTERN AC#FPSUN you_are_in_sewers_02
		IF~~THEN REPLY @26 EXTERN AC#FPSUN you_are_in_sewers_02
		
			CHAIN AC#FPSUN you_are_in_sewers_02
			@27
			EXTERN AC#FPSUN what_year
			
				CHAIN AC#FPSUN what_year
				@28
				END
				IF~~THEN REPLY @29 EXTERN AC#FPSUN what_year_02
				
				CHAIN AC#FPSUN what_year_02
				@30
				END
				IF~~THEN REPLY @31 EXTERN AC#FPSUN why_came_down_here
				IF~~THEN REPLY @32 EXTERN AC#FPSUN free_reward
				IF~~THEN REPLY @38 EXTERN AC#FPSUN free_reward
				
					CHAIN AC#FPSUN why_came_down_here
					@33
					END
					IF~~THEN REPLY @34 EXTERN AC#FPSUN what_kind_of_evil
					IF~~THEN REPLY @32 EXTERN AC#FPSUN free_reward
					
						CHAIN AC#FPSUN what_kind_of_evil
						@35
						END
						IF~~THEN REPLY @38 EXTERN AC#FPSUN free_reward

			CHAIN AC#FPSUN free_reward
			@36
			DO ~GiveItemCreate("AC#FPCLY",LastTalkedToBy(Myself),1,0,0)
			ActionOverride("AC#FPCLG",DestroySelf())~ EXTERN AC#FPSUN free_bye

CHAIN AC#FPSUN free_bye
@37
DO ~SetGlobal("AC#FPSuneLoveStory","GLOBAL",20)
EraseJournalEntry(@110002)
AddJournalEntry(@110003,QUEST_DONE)
AddexperienceParty(500)
EscapeArea()~ EXIT


