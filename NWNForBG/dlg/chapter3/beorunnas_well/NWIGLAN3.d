// ������� ��������: ���� ���� ������ ������� ��� ��������       m3q01a01igla - ������ ���������

BEGIN ~NWIGLAN3~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWIslandDialogue","GLOBAL",3)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXTERN ~NWROLGAN~ 13
END

IF ~~ THEN BEGIN 1 // from: NWROLGAN 13.4
  SAY @1
  IF ~~ THEN EXTERN ~NWROLGAN~ 18
END

IF ~~ THEN BEGIN 2 // from: NWROLGAN 18.1
  SAY @2
  IF ~~ THEN EXTERN ~NWROLGAN~ 19
END

IF ~~ THEN BEGIN 3 // from: NWROLGAN 13.4
  SAY @3
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY @4
  IF ~~ THEN GOTO 6
END

// -----------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWIslandDialogue","GLOBAL",4)~ THEN BEGIN 5 // from:
  SAY @4
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY @5
  IF ~~ THEN EXTERN ~NWNEURI2~ 40
END

IF ~~ THEN BEGIN 7 // from: NWNEURI2 40.1
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 8
  IF ~~ THEN REPLY @8 GOTO 9
  IF ~  OR(2)Global("NWLodarTalk","GLOBAL",2)GlobalGT("NWZedTalk","GLOBAL",0)~ THEN REPLY @9 GOTO 10
  IF ~GlobalGT("NWZedTalk","GLOBAL",0)~ THEN REPLY @10 GOTO 11
  IF ~~ THEN REPLY @11 GOTO 12
  IF ~~ THEN REPLY @12 GOTO 13
  IF ~~ THEN REPLY @13 EXTERN ~NWNEURI2~ 47
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY @14
  IF ~~ THEN EXTERN ~NWNEURI2~ 41
END

IF ~~ THEN BEGIN 9 // from: 7.2
  SAY @15
  IF ~~ THEN EXTERN ~NWNEURI2~ 42
END

IF ~~ THEN BEGIN 10 // from: 7.3
  SAY @16
  IF ~~ THEN EXTERN ~NWNEURI2~ 43
END

IF ~~ THEN BEGIN 11 // from: 7.4
  SAY @17
  IF ~~ THEN EXTERN ~NWNEURI2~ 44
END

IF ~~ THEN BEGIN 12 // from: 7.5
  SAY @18
  IF ~~ THEN EXTERN ~NWNEURI2~ 45
END

IF ~~ THEN BEGIN 13 // from: 7.6
  SAY @19
  IF ~~ THEN EXTERN ~NWNEURI2~ 46
END

IF ~~ THEN BEGIN 14 // from: NWNEURI2 50
  SAY @20
  IF ~~ THEN EXTERN ~NWNEURI2~ 51
END

IF ~~ THEN BEGIN 15 // from: NWNEURI2 52
  SAY @20
  IF ~~ THEN EXTERN ~NWNEURI2~ 53
END

IF ~~ THEN BEGIN 16 // from: NWNEURI2 54
  SAY @21
  IF ~~ THEN EXTERN ~NWNEURI2~ 55
END

