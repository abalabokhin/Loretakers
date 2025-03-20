// Dialogue moander statue
BEGIN ~AC#FP2ST~

CHAIN IF ~NumTimesTalkedTo(0)~ THEN AC#FP2ST hello_0
@0
DO ~SetGlobal("MoanderAmbush","AC#FP2",1)~ EXIT

// Dialogue Ulitharid, Mindflayer mastermind
BEGIN ~AC#FPULI~

CHAIN IF ~NumTimesTalkedTo(0)~ THEN AC#FPULI hello_0
@1
END
IF ~~ THEN REPLY @99 EXTERN AC#FPULI brain_picking
IF ~~ THEN REPLY @100 EXTERN AC#FPULI brain_picking
IF ~~ THEN REPLY @103 EXTERN AC#FPULI brain_picking
IF ~~ THEN REPLY @101 EXTERN AC#FPULI brain_picking
IF ~~ THEN REPLY @102 EXTERN AC#FPULI brain_picking

CHAIN AC#FPULI brain_picking
@104
=@2
DO ~AddJournalEntry(@100011,QUEST)
Enemy()~ EXIT


// Dialogue Priest of Moander
BEGIN ~AC#MOAN1~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN hello_0
SAY @3
IF ~~ THEN REPLY @4 + look_awful
IF ~~ THEN REPLY @5 EXTERN AC#MOAN1 chain_01
IF ~~ THEN REPLY @6 EXTERN AC#MOAN1 stop_you
END

	IF ~~ THEN BEGIN look_awful
	SAY @7
	IF ~~ THEN EXTERN AC#MOAN1 chain_01
	END	

	CHAIN IF ~~ THEN AC#MOAN1 chain_01
	@8
	END
	IF~Global("TalkedAboutOghma","LOCALS",0)~THEN REPLY @9 DO ~SetGlobal("TalkedAboutOghma","LOCALS",1)~ EXTERN AC#MOAN1 oghma_01
	IF~~THEN REPLY @10 EXTERN AC#MOAN1 who_is_moander
	
		CHAIN IF ~~ THEN AC#MOAN1 oghma_01
		@11
		END
		IF~~THEN REPLY @12 EXTERN AC#MOAN1 why_oghma
		IF ~~ THEN REPLY @6 EXTERN AC#MOAN1 stop_you
		
		CHAIN IF ~~ THEN AC#MOAN1 why_oghma
		@13
		=
		@14
		END
		IF~~THEN REPLY @10 EXTERN AC#MOAN1 who_is_moander
		IF ~~ THEN REPLY @6 EXTERN AC#MOAN1 stop_you
		
		CHAIN IF ~~ THEN AC#MOAN1 who_is_moander
		@15 
		=
		@16
		END
		IF~~THEN REPLY @17 EXTERN AC#MOAN1 moander_dead
		IF~Global("TalkedAboutOghma","LOCALS",0)~THEN REPLY @9 DO ~SetGlobal("TalkedAboutOghma","LOCALS",1)~ EXTERN AC#MOAN1 oghma_01
		IF ~~ THEN REPLY @6 EXTERN AC#MOAN1 stop_you
		
			CHAIN IF ~~ THEN AC#MOAN1 moander_dead
			@18
			=
			@19
			=
			@20
			END
			IF~Global("TalkedAboutOghma","LOCALS",0)~THEN REPLY @9 DO ~SetGlobal("TalkedAboutOghma","LOCALS",1)~ EXTERN AC#MOAN1 oghma_01
			IF~~THEN REPLY @21 EXTERN AC#MOAN1 blinded
			IF~~THEN REPLY @22 EXTERN AC#MOAN1 madman
			IF ~~ THEN REPLY @6 EXTERN AC#MOAN1 stop_you

CHAIN IF ~~ THEN AC#MOAN1 blinded
@23
END
IF~~THEN EXTERN AC#MOAN1 fight

CHAIN IF ~~ THEN AC#MOAN1 madman
@24
END
IF~~THEN EXTERN AC#MOAN1 fight

CHAIN IF ~~ THEN AC#MOAN1 stop_you
@25
END
IF~~THEN EXTERN AC#MOAN1 fight

CHAIN IF ~~ THEN AC#MOAN1 fight
@26 
= @27
DO ~EraseJournalEntry(@100006)
EraseJournalEntry(@100007)
AddJournalEntry(@100010,QUEST)
Enemy()~ EXIT
	
// Dialogue Imprisoned Monk

BEGIN ~AC#FPCO9~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN hello_0
SAY @28
IF ~GlobalGT("AC#Braintransceiver","GLOBAL",2)~ THEN REPLY @29 GOTO free_success
IF ~GlobalLT("AC#Braintransceiver","GLOBAL",3)~ THEN REPLY @29 GOTO free_failure 
IF ~~ THEN REPLY @30 + do_nothing
END

IF ~True()~ THEN BEGIN hello_again
SAY @31
IF ~GlobalGT("AC#Braintransceiver","GLOBAL",2)~ THEN REPLY @29 GOTO free_success
IF ~GlobalLT("AC#Braintransceiver","GLOBAL",3)~ THEN REPLY @29 GOTO free_failure 
IF ~~ THEN REPLY @30 + do_nothing
END	
		
			IF ~~ THEN BEGIN free_success
			SAY @32
			IF ~~ THEN DO ~SetGlobal("FreeMonk","AC#FP2",1)
			CreateCreatureObjectOffset("AC#FPCOG",LastTalkedToBy,[-1.-1])
			DestroySelf()~ EXIT 
			END
			
			IF ~~ THEN BEGIN free_failure
			SAY @33
			IF ~~ THEN EXIT 
			END
			
			IF ~~ THEN BEGIN do_nothing
			SAY @34
			IF ~~ THEN EXIT 
			END

BEGIN ~AC#FPCOG~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN hello_0
SAY @35 
IF ~~ THEN GOTO Chain_01
END

	CHAIN AC#FPCOG Chain_01
	@36
	END
	IF~~THEN REPLY @37 EXTERN AC#FPCOG Chain_02
	
		CHAIN AC#FPCOG Chain_02
		@38
		END
		IF~~THEN REPLY @39 EXTERN AC#FPCOG Chain_elderbrain
		IF~~THEN REPLY @40 EXTERN AC#FPCOG Chain_elderbrain
		
			CHAIN AC#FPCOG Chain_elderbrain
			@41
			END
			IF~~THEN REPLY @42 EXTERN AC#FPCOG Chain_loretakers_01
			IF~~THEN REPLY @43 EXTERN AC#FPCOG Chain_loretakers_01
			IF~~THEN REPLY @44 EXTERN AC#FPCOG Chain_loretakers_01
			IF~~THEN REPLY @45 EXTERN AC#FPCOG Chain_loretakers_01
			IF~~THEN REPLY @46 EXTERN AC#FPCOG Chain_loretakers_01
				
				CHAIN AC#FPCOG Chain_loretakers_01
				@47
				END
				IF~~THEN REPLY @48 DO ~SetGlobal("AskSkull","LOCALS",1)~ EXTERN AC#FPCOG Chain_skull
				IF~~THEN REPLY @49 EXTERN AC#FPCOG Chain_loretakers_02
				
					CHAIN AC#FPCOG Chain_skull
					@50
					END
					IF~~THEN REPLY @51 EXTERN AC#FPCOG Chain_loretakers_03
				
				CHAIN AC#FPCOG Chain_loretakers_02
				@52
				END
				IF~Global("AskSkull","LOCALS",0)~THEN REPLY @48 EXTERN AC#FPCOG Chain_skull
				IF~~THEN REPLY @51 EXTERN AC#FPCOG Chain_loretakers_03
				
					CHAIN AC#FPCOG Chain_loretakers_03
					@53
					EXTERN AC#FPCOG loretakers_bye
					
						CHAIN AC#FPCOG loretakers_bye
						@54
						DO ~SetGlobal("AC#FP_LoremasterFree","GLOBAL",1)
						AddJournalEntry(@100020,QUEST)
						EscapeArea()~ EXIT
				
// petrified ogre

BEGIN ~AC#FPOG4~ 
CHAIN IF ~NumTimesTalkedTo(0)~ THEN AC#FPOG4 hello_0
@55
END
IF~~THEN REPLY @56 EXTERN AC#FPOG4 petrified
IF~~THEN REPLY @57 EXTERN AC#FPOG4 reward
IF~~THEN REPLY @58 EXTERN AC#FPOG4 reward
IF~~THEN REPLY @59 EXTERN AC#FPOG4 fight
IF~~THEN REPLY @60 EXTERN AC#FPOG4 bye_01

	CHAIN AC#FPOG4 petrified
	//~What? Petrifart?~
	@61
	END
	IF~~THEN REPLY @62 EXTERN AC#FPOG4 reward
	IF~~THEN REPLY @63 EXTERN AC#FPOG4 reward
	IF~~THEN REPLY @60 EXTERN AC#FPOG4 bye_01

	CHAIN AC#FPOG4 reward
	@64
	END
	IF~~THEN DO ~GiveItem("AC#FPORB",LastTalkedToBy())~ EXTERN AC#FPOG4 bye_01
	
	CHAIN AC#FPOG4 bye_01
	@65
	DO ~EscapeArea()~ EXIT
	
	CHAIN AC#FPOG4 fight
	@66
	DO ~Enemy()~ EXIT

BEGIN ~AC#WRIMB~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN hello_0
SAY @67 
IF ~~ THEN REPLY @68 + fight
IF ~~ THEN REPLY @69 + why_head_hurts
END

	IF ~~ THEN BEGIN fight
	SAY @70
	IF ~~ THEN DO ~Enemy()~ EXIT 
	END
	
	IF ~~ THEN BEGIN why_head_hurts
	SAY @71
	IF ~~ THEN REPLY @72 + give_me_key
	END
	
	IF ~~ THEN BEGIN give_me_key
	SAY @73	
	IF ~~ THEN REPLY @74 DO ~GiveItem("AC#FP2K9",LastTalkedToBy)~ + bye
	END
	
	IF ~~ THEN BEGIN bye
	SAY @75
	IF ~~ THEN DO ~EscapeArea()~ EXIT 
	END

// the two ogres
BEGIN AC#FP2O1
BEGIN AC#FP2O2

CHAIN IF ~NumTimesTalkedTo(0)~ THEN AC#FP2O1 hello
@76
==AC#FP2O2 @77 
==AC#FP2O1 @78	
==AC#FP2O2 @79
END
IF~~THEN REPLY @80 EXTERN AC#FP2O1 spot_enemy
IF~~THEN REPLY @81 EXTERN AC#FP2O1 continue_01

CHAIN AC#FP2O1 spot_enemy
@82
DO ~Enemy()
ActionOverride("AC#FP2O2",Enemy())~ EXIT

CHAIN AC#FP2O1 continue_01	
@83
==AC#FP2O2 @84
==AC#FP2O1 @85
==AC#FP2O2 @86
==AC#FP2O1 @87
==AC#FP2O2 @88
END
//IF~~THEN REPLY ~Greetings, I am <CHARNAME>. I suggest to play head, head, longsword with you instead.~ EXTERN AC#FP2O1 spot_enemy
IF~~THEN REPLY @89 EXTERN AC#FP2O1 spot_enemy
IF~~THEN REPLY @90 EXTERN AC#FP2O1 spot_enemy
IF~~THEN REPLY @81 EXTERN AC#FP2O1 continue_02

CHAIN AC#FP2O1 continue_02
@91
==AC#FP2O1 @92
==AC#FP2O1 @93
==AC#FP2O2 @94
==AC#FP2O1 @95
==AC#FP2O2 @96
==AC#FP2O1 @97
==AC#FP2O2 @86
==AC#FP2O1 @98
EXTERN AC#FP2O1 spot_enemy	
	

