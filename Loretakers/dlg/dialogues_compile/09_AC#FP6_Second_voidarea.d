// Third Statue

BEGIN AC#FP6S3

CHAIN IF ~Global("ThirdRiddleRight","AC#FP6",1)~ THEN AC#FP6S3 hello_riddle_already_solved
@0
EXIT

CHAIN IF ~NumTimesTalkedTo(0)~ THEN AC#FP6S3 hello_0
@1
END
IF~~THEN REPLY @2 EXTERN AC#FP6S3 riddle_start
IF~~THEN REPLY @3 EXTERN AC#FP6S3 where_am_i
IF~~THEN REPLY @4 EXTERN AC#FP6S3 get_out_of_here
IF~~THEN REPLY @5 EXTERN AC#FP6S3 what_to_do
IF~~THEN REPLY @6 EXTERN AC#FP6S3 no_riddle
	
CHAIN IF ~True()~ THEN AC#FP6S3 hello_again
@7
END
IF~~THEN REPLY @2 EXTERN AC#FP6S3 riddle_start
IF~~THEN REPLY @3 EXTERN AC#FP6S3 where_am_i
IF~~THEN REPLY @4 EXTERN AC#FP6S3 get_out_of_here
IF~~THEN REPLY @5 EXTERN AC#FP6S3 what_to_do
IF~~THEN REPLY @6 EXTERN AC#FP6S3 no_riddle

	CHAIN AC#FP6S3 where_am_i
	@8
	END
	IF~~THEN REPLY @4 EXTERN AC#FP6S3 get_out_of_here
	IF~~THEN REPLY @5 EXTERN AC#FP6S3 what_to_do
		IF~~THEN REPLY @9 EXTERN AC#FP6S3 riddle_start
	IF~~THEN REPLY @6 EXTERN AC#FP6S3 no_riddle

	CHAIN AC#FP6S3 get_out_of_here
	@10
	END
	IF~~THEN REPLY @3 EXTERN AC#FP6S3 where_am_i
	IF~~THEN REPLY @5 EXTERN AC#FP6S3 what_to_do
	IF~~THEN REPLY @9 EXTERN AC#FP6S3 riddle_start
	IF~~THEN REPLY @6 EXTERN AC#FP6S3 no_riddle

	CHAIN AC#FP6S3 what_to_do
	@11
	END
	IF~~THEN REPLY @3 EXTERN AC#FP6S3 where_am_i
	IF~~THEN REPLY @4 EXTERN AC#FP6S3 get_out_of_here
	IF~~THEN REPLY @9 EXTERN AC#FP6S3 riddle_start
	IF~~THEN REPLY @6 EXTERN AC#FP6S3 no_riddle

	CHAIN AC#FP6S3 riddle_start
	@12
	END
	IF~~THEN EXTERN AC#FP6S3 riddle_main
	
	CHAIN AC#FP6S3 riddle_main
	@13
	END
	IF~~THEN REPLY @14 EXTERN AC#FP6S3 wrong
	IF~~THEN REPLY @15 EXTERN AC#FP6S3 wrong
	IF~~THEN REPLY @16 EXTERN AC#FP6S3 wrong
	IF~~THEN REPLY @17 EXTERN AC#FP6S3 right
	IF~~THEN REPLY @18 EXTERN AC#FP6S3 right
	IF~~THEN REPLY @19 EXTERN AC#FP6S3 no_riddle
	
	CHAIN AC#FP6S3 right
	@20
	DO ~SetGlobal("ThirdRiddleRight","AC#FP6",1)~ EXIT
	
	CHAIN AC#FP6S3 wrong
	@21
	DO ~SetGlobal("AC#FP6_wrong","GLOBAL",1)~ EXIT
	
	CHAIN AC#FP6S3 no_riddle
	@22
EXIT

// Second Statue

BEGIN AC#FP6S2

CHAIN IF ~Global("SecondRiddleRight","AC#FP6",1)~ THEN AC#FP6S2 hello_riddle_already_solved
@0
EXIT

CHAIN IF ~NumTimesTalkedTo(0)~ THEN AC#FP6S2 hello_0
@1
END
IF~~THEN REPLY @2 EXTERN AC#FP6S2 riddle_start
IF~~THEN REPLY @3 EXTERN AC#FP6S2 where_am_i
IF~~THEN REPLY @4 EXTERN AC#FP6S2 get_out_of_here
IF~~THEN REPLY @5 EXTERN AC#FP6S2 what_to_do
IF~~THEN REPLY @6 EXTERN AC#FP6S2 no_riddle
	
CHAIN IF ~True()~ THEN AC#FP6S2 hello_again
@23
END
IF~~THEN REPLY @2 EXTERN AC#FP6S2 riddle_start
IF~~THEN REPLY @3 EXTERN AC#FP6S2 where_am_i
IF~~THEN REPLY @4 EXTERN AC#FP6S2 get_out_of_here
IF~~THEN REPLY @5 EXTERN AC#FP6S2 what_to_do
IF~~THEN REPLY @6 EXTERN AC#FP6S2 no_riddle

	CHAIN AC#FP6S2 where_am_i
	@8
	END
	IF~~THEN REPLY @4 EXTERN AC#FP6S2 get_out_of_here
	IF~~THEN REPLY @5 EXTERN AC#FP6S2 what_to_do
		IF~~THEN REPLY @9 EXTERN AC#FP6S2 riddle_start
	IF~~THEN REPLY @6 EXTERN AC#FP6S2 no_riddle

	CHAIN AC#FP6S2 get_out_of_here
	@10
	END
	IF~~THEN REPLY @3 EXTERN AC#FP6S2 where_am_i
	IF~~THEN REPLY @5 EXTERN AC#FP6S2 what_to_do
	IF~~THEN REPLY @9 EXTERN AC#FP6S2 riddle_start
	IF~~THEN REPLY @6 EXTERN AC#FP6S2 no_riddle

	CHAIN AC#FP6S2 what_to_do
	@11
	END
	IF~~THEN REPLY @3 EXTERN AC#FP6S2 where_am_i
	IF~~THEN REPLY @4 EXTERN AC#FP6S2 get_out_of_here
	IF~~THEN REPLY @9 EXTERN AC#FP6S2 riddle_start
	IF~~THEN REPLY @6 EXTERN AC#FP6S2 no_riddle

	CHAIN AC#FP6S2 riddle_start
	@12
	END
	IF~~THEN EXTERN AC#FP6S2 riddle_main
	
	CHAIN AC#FP6S2 riddle_main
	@24
	END
	IF~~THEN REPLY @25 EXTERN AC#FP6S2 wrong
	IF~~THEN REPLY @26 EXTERN AC#FP6S2 right
	IF~~THEN REPLY @27 EXTERN AC#FP6S2 wrong
	IF~~THEN REPLY @28 EXTERN AC#FP6S2 wrong
	IF~~THEN REPLY @29 EXTERN AC#FP6S2 wrong
	IF~~THEN REPLY @19 EXTERN AC#FP6S2 no_riddle
	
	CHAIN AC#FP6S2 right
	@30
	DO ~SetGlobal("SecondRiddleRight","AC#FP6",1)~ EXIT
	
	CHAIN AC#FP6S2 wrong
	@21
	DO ~SetGlobal("AC#FP6_wrong","GLOBAL",1)~ EXIT
	
	CHAIN AC#FP6S2 no_riddle
	@22
EXIT
	



// First Statue

BEGIN AC#FP6S1

CHAIN IF ~Global("AC#FP6_wrong","GLOBAL",2)~ THEN AC#FP6S1 wrong_teleport_away_hurt
@31
	DO ~StartCutSceneMode()		
		SmallWait(15)
		ReallyForceSpellRES("AC#FPRI",LastTalkedToBy(Myself))
		FadeToColor([30.0],0)
		Wait(1)
		ActionOverride(LastTalkedToBy(Myself),LeaveAreaLUAPanic("AC#FP2","",[583.2763],S))
		ActionOverride(LastTalkedToBy(Myself),LeaveAreaLUA("AC#FP2","",[583.2763],S))
		ActionOverride(Player1,MakeUnselectable(0))
		ActionOverride(Player2,MakeUnselectable(0))
		ActionOverride(Player3,MakeUnselectable(0))
		ActionOverride(Player4,MakeUnselectable(0))
		ActionOverride(Player5,MakeUnselectable(0))
		ActionOverride(Player6,MakeUnselectable(0))
		MultiPlayerSync()
		FadeFromColor([30.0],0)
		MoveViewObject(LastTalkedToBy(Myself),INSTANT)
		ReallyForceSpellRES("AC#FPRI",LastTalkedToBy(Myself))
		ApplyDamagePercent(LastTalkedToBy(Myself),80,CRUSHING)
		ActionOverride(LastTalkedToBy(Myself),PlayDead(6))
		SetGlobal("AC#FP6_wrong","GLOBAL",0)
		SetGlobal("AC#FP_AC#FP6_Entered","GLOBAL",0)
		EndCutSceneMode()~ EXIT
		
CHAIN IF ~Global("AC#FP_AC#FP6_Solved","GLOBAL",1)~ THEN AC#FP6S1 all_finished
@32
=
@33
	DO ~StartCutSceneMode()
		SetGlobal("AC#FP_AC#FP6_Solved","GLOBAL",1)
		CreateVisualEffectObject("SPSTRENH",LastTalkedToBy(Myself))
		FadeToColor([20.0],0)
		Wait(3)
		ActionOverride(LastTalkedToBy(Myself),LeaveAreaLUAPanic("AC#FP2","",[583.2763],S))
		ActionOverride(LastTalkedToBy(Myself),LeaveAreaLUA("AC#FP2","",[583.2763],S))
		ActionOverride(Player1,MakeUnselectable(0))
		ActionOverride(Player2,MakeUnselectable(0))
		ActionOverride(Player3,MakeUnselectable(0))
		ActionOverride(Player4,MakeUnselectable(0))
		ActionOverride(Player5,MakeUnselectable(0))
		ActionOverride(Player6,MakeUnselectable(0))
		MultiPlayerSync()
		FadeFromColor([20.0],0)
		SmallWait(15)
		MoveViewObject(LastTalkedToBy(Myself),INSTANT)
		CreateVisualEffectObject("SPSTRENH",LastTalkedToBy(Myself))	
		EndCutSceneMode()
		DisplayStringHead(LastTalkedToBy(Myself),@4000) 
		GiveItemCreate("AC#FP2K7",LastTalkedToBy(Myself),0,0,0)
		AddXPObject(LastTalkedToBy(Myself),500)~ EXIT
		
	
CHAIN IF ~Global("FirstRiddleRight","AC#FP6",1)~ THEN AC#FP6S1 hello_riddle_already_solved
@0
EXIT

CHAIN IF ~NumTimesTalkedTo(0)~ THEN AC#FP6S1 hello_0
@1
END
IF~~THEN REPLY @2 EXTERN AC#FP6S1 riddle_start
IF~~THEN REPLY @3 EXTERN AC#FP6S1 where_am_i
IF~~THEN REPLY @4 EXTERN AC#FP6S1 get_out_of_here
IF~~THEN REPLY @5 EXTERN AC#FP6S1 what_to_do
IF~~THEN REPLY @6 EXTERN AC#FP6S1 no_riddle
	
CHAIN IF ~True()~ THEN AC#FP6S1 hello_again
@7
END
IF~~THEN REPLY @2 EXTERN AC#FP6S1 riddle_start
IF~~THEN REPLY @3 EXTERN AC#FP6S1 where_am_i
IF~~THEN REPLY @4 EXTERN AC#FP6S1 get_out_of_here
IF~~THEN REPLY @5 EXTERN AC#FP6S1 what_to_do
IF~~THEN REPLY @6 EXTERN AC#FP6S1 no_riddle

	CHAIN AC#FP6S1 where_am_i
	@8
	END
	IF~~THEN REPLY @4 EXTERN AC#FP6S1 get_out_of_here
	IF~~THEN REPLY @5 EXTERN AC#FP6S1 what_to_do
		IF~~THEN REPLY @9 EXTERN AC#FP6S1 riddle_start
	IF~~THEN REPLY @6 EXTERN AC#FP6S1 no_riddle

	CHAIN AC#FP6S1 get_out_of_here
	@10
	END
	IF~~THEN REPLY @3 EXTERN AC#FP6S1 where_am_i
	IF~~THEN REPLY @5 EXTERN AC#FP6S1 what_to_do
	IF~~THEN REPLY @9 EXTERN AC#FP6S1 riddle_start
	IF~~THEN REPLY @6 EXTERN AC#FP6S1 no_riddle

	CHAIN AC#FP6S1 what_to_do
	@34
	END
	IF~~THEN REPLY @3 EXTERN AC#FP6S1 where_am_i
	IF~~THEN REPLY @4 EXTERN AC#FP6S1 get_out_of_here
	IF~~THEN REPLY @9 EXTERN AC#FP6S1 riddle_start
	IF~~THEN REPLY @6 EXTERN AC#FP6S1 no_riddle

	CHAIN AC#FP6S1 riddle_start
	@35
	END
	IF~~THEN EXTERN AC#FP6S1 riddle_main
	
	CHAIN AC#FP6S1 riddle_main
	@36
	END
	IF~~THEN REPLY @37 EXTERN AC#FP6S1 wrong
	IF~~THEN REPLY @38 EXTERN AC#FP6S1 wrong
	IF~~THEN REPLY @39 EXTERN AC#FP6S1 right
	IF~~THEN REPLY @40 EXTERN AC#FP6S1 right
	IF~~THEN REPLY @41 EXTERN AC#FP6S1 wrong
	IF~~THEN REPLY @19 EXTERN AC#FP6S1 no_riddle
	
	CHAIN AC#FP6S1 right
	@42
	DO ~SetGlobal("FirstRiddleRight","AC#FP6",1)~ EXIT
	
	CHAIN AC#FP6S1 wrong
	@21
	DO ~SetGlobal("AC#FP6_wrong","GLOBAL",1)~ EXIT
	
	CHAIN AC#FP6S1 no_riddle
	@43
	EXIT
	

