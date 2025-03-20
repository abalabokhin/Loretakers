BEGIN AC#FPORB

CHAIN IF ~PartyHasItemIdentified("AC#FPORB")
Global("AC#FPCryptoorb","GLOBAL",10)~ THEN AC#FPORB hello_open
@0
END
IF~~THEN REPLY @1 EXTERN AC#FPORB put_aside

CHAIN IF ~PartyHasItemIdentified("AC#FPORB")
Global("AC#FPCryptoorb","GLOBAL",0)~ THEN AC#FPORB hello_0
@2
END
IF~~THEN REPLY @3 EXTERN AC#FPORB examine_sphere
IF~~THEN REPLY @1 EXTERN AC#FPORB put_aside

	CHAIN AC#FPORB examine_sphere
	@4
	END
	IF~~THEN REPLY @5  EXTERN AC#FPORB examine_runes
	IF~~THEN REPLY @1 EXTERN AC#FPORB put_aside	
	
	CHAIN AC#FPORB examine_runes
	@6
	END
	IF~~THEN REPLY @7 EXTERN AC#FPORB decipher_runes
	IF~~THEN REPLY @8 EXTERN AC#FPORB examine_sphere
	IF~~THEN REPLY @1 EXTERN AC#FPORB put_aside
	
	CHAIN AC#FPORB decipher_runes
	@9
	END
	IF~CheckStatGT(LastTalkedToBy(),16,INT)~THEN REPLY @10 EXTERN AC#FPORB speculate_meaning
	IF~CheckStatLT(LastTalkedToBy(),17,INT)~THEN REPLY @10 EXTERN AC#FPORB speculate_meaning_failure
	IF~CheckStatGT(LastTalkedToBy(),49,LORE)~THEN REPLY @11 EXTERN AC#FPORB explore_history
	IF~CheckStatLT(LastTalkedToBy(),50,LORE)~THEN REPLY @11 EXTERN AC#FPORB explore_history_failure
	IF~~THEN REPLY @8 EXTERN AC#FPORB examine_sphere
	IF~~THEN REPLY @1 EXTERN AC#FPORB put_aside
	
	CHAIN AC#FPORB speculate_meaning_failure
	@12
	END
	IF~~THEN REPLY @7 EXTERN AC#FPORB decipher_runes
	IF~~THEN REPLY @8 EXTERN AC#FPORB examine_sphere
	IF~~THEN REPLY @1 EXTERN AC#FPORB put_aside
	
	CHAIN AC#FPORB explore_history_failure
	@13
	END
	IF~~THEN REPLY @7 EXTERN AC#FPORB decipher_runes
	IF~~THEN REPLY @8 EXTERN AC#FPORB examine_sphere
	IF~~THEN REPLY @1 EXTERN AC#FPORB put_aside
	
	CHAIN AC#FPORB speculate_meaning
	@14
	=@15
	END
	IF~~THEN REPLY @16  EXTERN AC#FPORB solve_puzzle
	IF~~THEN REPLY @1 EXTERN AC#FPORB put_aside
	
	CHAIN AC#FPORB explore_history
	@17
	END
	IF~~THEN REPLY @18 EXTERN AC#FPORB solve_puzzle
	IF~~THEN REPLY @1 EXTERN AC#FPORB put_aside

	CHAIN AC#FPORB solve_puzzle
	@19
	= @20
	= @21
	EXTERN AC#FPORB take_ioun_stone
	
	CHAIN AC#FPORB take_ioun_stone
	@22
	DO ~SetGlobal("AC#FPCryptoorb","GLOBAL",10)
	AddExperienceParty(500) GiveItemCreate("AC#FPSIS",LastTalkedToBy(),1,0,0) ~ EXIT
	
	CHAIN AC#FPORB put_aside
	@23
	EXIT

CHAIN IF ~True()~ THEN AC#FPORB hello_unidentified
@24
END
IF~~THEN REPLY @1 EXTERN AC#FPORB put_aside