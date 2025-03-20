// Third Statue

BEGIN AC#FP4S3

CHAIN IF ~Global("ThirdRiddleRight","AC#FP4",1)~ THEN AC#FP4S3 hello_riddle_already_solved
@0
EXIT

CHAIN IF ~NumTimesTalkedTo(0)~ THEN AC#FP4S3 hello_0
@1
END
IF~~THEN REPLY @2 EXTERN AC#FP4S3 riddle_start
IF~~THEN REPLY @3 EXTERN AC#FP4S3 where_am_i
IF~~THEN REPLY @4 EXTERN AC#FP4S3 get_out_of_here
IF~~THEN REPLY @5 EXTERN AC#FP4S3 what_to_do
IF~~THEN REPLY @6 EXTERN AC#FP4S3 no_riddle
	
CHAIN IF ~True()~ THEN AC#FP4S3 hello_again
@7
END
IF~~THEN REPLY @2 EXTERN AC#FP4S3 riddle_start
IF~~THEN REPLY @3 EXTERN AC#FP4S3 where_am_i
IF~~THEN REPLY @4 EXTERN AC#FP4S3 get_out_of_here
IF~~THEN REPLY @5 EXTERN AC#FP4S3 what_to_do
IF~~THEN REPLY @6 EXTERN AC#FP4S3 no_riddle

	CHAIN AC#FP4S3 where_am_i
	@8
	END
	IF~~THEN REPLY @4 EXTERN AC#FP4S3 get_out_of_here
	IF~~THEN REPLY @5 EXTERN AC#FP4S3 what_to_do
		IF~~THEN REPLY @9 EXTERN AC#FP4S3 riddle_start
	IF~~THEN REPLY @6 EXTERN AC#FP4S3 no_riddle

	CHAIN AC#FP4S3 get_out_of_here
	@10
	END
	IF~~THEN REPLY @3 EXTERN AC#FP4S3 where_am_i
	IF~~THEN REPLY @5 EXTERN AC#FP4S3 what_to_do
	IF~~THEN REPLY @9 EXTERN AC#FP4S3 riddle_start
	IF~~THEN REPLY @6 EXTERN AC#FP4S3 no_riddle

	CHAIN AC#FP4S3 what_to_do
	@11
	END
	IF~~THEN REPLY @3 EXTERN AC#FP4S3 where_am_i
	IF~~THEN REPLY @4 EXTERN AC#FP4S3 get_out_of_here
	IF~~THEN REPLY @9 EXTERN AC#FP4S3 riddle_start
	IF~~THEN REPLY @6 EXTERN AC#FP4S3 no_riddle

	CHAIN AC#FP4S3 riddle_start
	@12
	END
	IF~~THEN EXTERN AC#FP4S3 riddle_main
	
	CHAIN AC#FP4S3 riddle_main
	@13
	END
	IF~~THEN REPLY @14 EXTERN AC#FP4S3 wrong
	IF~~THEN REPLY @15 EXTERN AC#FP4S3 wrong
	IF~~THEN REPLY @16 EXTERN AC#FP4S3 wrong
	IF~~THEN REPLY @17 EXTERN AC#FP4S3 wrong
	IF~~THEN REPLY @18 EXTERN AC#FP4S3 right
	IF~~THEN REPLY @19 EXTERN AC#FP4S3 no_riddle
	
	CHAIN AC#FP4S3 right
	@20
	DO ~SetGlobal("ThirdRiddleRight","AC#FP4",1)~ EXIT
	
	CHAIN AC#FP4S3 wrong
	@21
	DO ~SetGlobal("AC#FP4_wrong","GLOBAL",1)
	ReallyForceSpellRES("AC#FPRI",LastTalkedToBy())~ EXIT
	
	CHAIN AC#FP4S3 no_riddle
	@22
EXIT

// Second Statue

BEGIN AC#FP4S2

CHAIN IF ~Global("SecondRiddleRight","AC#FP4",1)~ THEN AC#FP4S2 hello_riddle_already_solved
@0
EXIT

CHAIN IF ~NumTimesTalkedTo(0)~ THEN AC#FP4S2 hello_0
@1
END
IF~~THEN REPLY @2 EXTERN AC#FP4S2 riddle_start
IF~~THEN REPLY @3 EXTERN AC#FP4S2 where_am_i
IF~~THEN REPLY @4 EXTERN AC#FP4S2 get_out_of_here
IF~~THEN REPLY @5 EXTERN AC#FP4S2 what_to_do
IF~~THEN REPLY @6 EXTERN AC#FP4S2 no_riddle
	
CHAIN IF ~True()~ THEN AC#FP4S2 hello_again
@7
END
IF~~THEN REPLY @2 EXTERN AC#FP4S2 riddle_start
IF~~THEN REPLY @3 EXTERN AC#FP4S2 where_am_i
IF~~THEN REPLY @4 EXTERN AC#FP4S2 get_out_of_here
IF~~THEN REPLY @5 EXTERN AC#FP4S2 what_to_do
IF~~THEN REPLY @6 EXTERN AC#FP4S2 no_riddle

	CHAIN AC#FP4S2 where_am_i
	@8
	END
	IF~~THEN REPLY @4 EXTERN AC#FP4S2 get_out_of_here
	IF~~THEN REPLY @5 EXTERN AC#FP4S2 what_to_do
		IF~~THEN REPLY @9 EXTERN AC#FP4S2 riddle_start
	IF~~THEN REPLY @6 EXTERN AC#FP4S2 no_riddle

	CHAIN AC#FP4S2 get_out_of_here
	@10
	END
	IF~~THEN REPLY @3 EXTERN AC#FP4S2 where_am_i
	IF~~THEN REPLY @5 EXTERN AC#FP4S2 what_to_do
	IF~~THEN REPLY @9 EXTERN AC#FP4S2 riddle_start
	IF~~THEN REPLY @6 EXTERN AC#FP4S2 no_riddle

	CHAIN AC#FP4S2 what_to_do
	@11
	END
	IF~~THEN REPLY @3 EXTERN AC#FP4S2 where_am_i
	IF~~THEN REPLY @4 EXTERN AC#FP4S2 get_out_of_here
	IF~~THEN REPLY @9 EXTERN AC#FP4S2 riddle_start
	IF~~THEN REPLY @6 EXTERN AC#FP4S2 no_riddle

	CHAIN AC#FP4S2 riddle_start
	@12
	END
	IF~~THEN EXTERN AC#FP4S2 riddle_main
	
	CHAIN AC#FP4S2 riddle_main
	@23
	END
	IF~~THEN REPLY @24 EXTERN AC#FP4S2 wrong
	IF~~THEN REPLY @25 EXTERN AC#FP4S2 right
	IF~~THEN REPLY @26 EXTERN AC#FP4S2 wrong
	IF~~THEN REPLY @27 EXTERN AC#FP4S2 wrong
	IF~~THEN REPLY @28 EXTERN AC#FP4S2 wrong
	IF~~THEN REPLY @19 EXTERN AC#FP4S2 no_riddle
	
	CHAIN AC#FP4S2 right
	@29
	DO ~SetGlobal("SecondRiddleRight","AC#FP4",1)~ EXIT
	
	CHAIN AC#FP4S2 wrong
	@21
	DO ~SetGlobal("AC#FP4_wrong","GLOBAL",1)
	ReallyForceSpellRES("AC#FPRI",LastTalkedToBy())~ EXIT
	
	CHAIN AC#FP4S2 no_riddle
	@22
EXIT
	



// First Statue

BEGIN AC#FP4S1

CHAIN IF ~Global("AC#FP4_wrong","GLOBAL",2)~ THEN AC#FP4S1 wrong_teleport_away_hurt
@30
	DO ~StartCutSceneMode()		
		SmallWait(15)
		ReallyForceSpellRES("AC#FPRI",LastTalkedToBy(Myself))
		FadeToColor([30.0],0)
		Wait(1)
		ActionOverride(LastTalkedToBy(Myself),LeaveAreaLUAPanic("AC#FP2","",[2062.2769],S))
		ActionOverride(LastTalkedToBy(Myself),LeaveAreaLUA("AC#FP2","",[2062.2769],S))
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
		SetGlobal("AC#FP4_wrong","GLOBAL",0)
		SetGlobal("AC#FP_AC#FP4_Entered","GLOBAL",0)
		EndCutSceneMode()~ EXIT
		
CHAIN IF ~Global("AC#FP_AC#FP4_Solved","GLOBAL",1)~ THEN AC#FP4S1 all_finished
@31
=
@32
	DO ~StartCutSceneMode()
		SetGlobal("AC#FP_AC#FP4_Solved","GLOBAL",1)
		CreateVisualEffectObject("SPSTRENH",LastTalkedToBy(Myself))
		FadeToColor([20.0],0)
		Wait(3)
		ActionOverride(LastTalkedToBy(Myself),LeaveAreaLUAPanic("AC#FP2","",[2062.2769],S))
		ActionOverride(LastTalkedToBy(Myself),LeaveAreaLUA("AC#FP2","",[2062.2769],S))
		ActionOverride(Player1,MakeUnselectable(0))
		ActionOverride(Player2,MakeUnselectable(0))
		ActionOverride(Player3,MakeUnselectable(0))
		ActionOverride(Player4,MakeUnselectable(0))
		ActionOverride(Player5,MakeUnselectable(0))
		ActionOverride(Player6,MakeUnselectable(0))
		MultiPlayerSync()
		FadeFromColor([20.0],0)
		MoveViewObject(LastTalkedToBy(Myself),INSTANT)
		CreateVisualEffectObject("SPSTRENH",LastTalkedToBy(Myself))
		SmallWait(15)
		EndCutSceneMode()
		DisplayStringHead(LastTalkedToBy(Myself),@4000) 
		GiveItemCreate("AC#FP2K6",LastTalkedToBy(Myself),0,0,0)
		AddXPObject(LastTalkedToBy(Myself),500)~ EXIT
		
CHAIN IF ~Global("FirstRiddleRight","AC#FP4",1)~ THEN AC#FP4S1 hello_riddle_already_solved
@0
EXIT

CHAIN IF ~NumTimesTalkedTo(0)~ THEN AC#FP4S1 hello_0
@1
END
IF~~THEN REPLY @2 EXTERN AC#FP4S1 riddle_start
IF~~THEN REPLY @3 EXTERN AC#FP4S1 where_am_i
IF~~THEN REPLY @4 EXTERN AC#FP4S1 get_out_of_here
IF~~THEN REPLY @5 EXTERN AC#FP4S1 what_to_do
IF~~THEN REPLY @6 EXTERN AC#FP4S1 no_riddle
	
CHAIN IF ~True()~ THEN AC#FP4S1 hello_again
@7
END
IF~~THEN REPLY @2 EXTERN AC#FP4S1 riddle_start
IF~~THEN REPLY @3 EXTERN AC#FP4S1 where_am_i
IF~~THEN REPLY @4 EXTERN AC#FP4S1 get_out_of_here
IF~~THEN REPLY @5 EXTERN AC#FP4S1 what_to_do
IF~~THEN REPLY @6 EXTERN AC#FP4S1 no_riddle

	CHAIN AC#FP4S1 where_am_i
	@8
	END
	IF~~THEN REPLY @4 EXTERN AC#FP4S1 get_out_of_here
	IF~~THEN REPLY @5 EXTERN AC#FP4S1 what_to_do
		IF~~THEN REPLY @9 EXTERN AC#FP4S1 riddle_start
	IF~~THEN REPLY @6 EXTERN AC#FP4S1 no_riddle

	CHAIN AC#FP4S1 get_out_of_here
	@10
	END
	IF~~THEN REPLY @3 EXTERN AC#FP4S1 where_am_i
	IF~~THEN REPLY @5 EXTERN AC#FP4S1 what_to_do
	IF~~THEN REPLY @9 EXTERN AC#FP4S1 riddle_start
	IF~~THEN REPLY @6 EXTERN AC#FP4S1 no_riddle

	CHAIN AC#FP4S1 what_to_do
	@11
	END
	IF~~THEN REPLY @3 EXTERN AC#FP4S1 where_am_i
	IF~~THEN REPLY @4 EXTERN AC#FP4S1 get_out_of_here
	IF~~THEN REPLY @9 EXTERN AC#FP4S1 riddle_start
	IF~~THEN REPLY @6 EXTERN AC#FP4S1 no_riddle

	CHAIN AC#FP4S1 riddle_start
	@33
	END
	IF~~THEN EXTERN AC#FP4S1 riddle_main
	
	CHAIN AC#FP4S1 riddle_main
	@34
	END
	IF~~THEN REPLY @35 EXTERN AC#FP4S1 wrong
	IF~~THEN REPLY @36 EXTERN AC#FP4S1 wrong
	IF~~THEN REPLY @37 EXTERN AC#FP4S1 right
	IF~~THEN REPLY @38 EXTERN AC#FP4S1 wrong
	IF~~THEN REPLY @39 EXTERN AC#FP4S1 wrong
	IF~~THEN REPLY @19 EXTERN AC#FP4S1 no_riddle
	
	CHAIN AC#FP4S1 right
	@40
	DO ~SetGlobal("FirstRiddleRight","AC#FP4",1)~ EXIT
	
	CHAIN AC#FP4S1 wrong
	@21
	DO ~SetGlobal("AC#FP4_wrong","GLOBAL",1)
	ReallyForceSpellRES("AC#FPRI",LastTalkedToBy())~ EXIT
	
	CHAIN AC#FP4S1 no_riddle
	@41
	EXIT
	

