// ���������� �������� ��������   ��� ������� ������ � ����� ����������� ��������, ����, ���� �� ���������� ������ �� �� ����, ��� � ���� ������ �� ����� ���� �����.  SetGlobalTimer("seencloud","LOCALS",FOUR_MINUTES)  GlobalTimerNotExpired("chasetarget","LOCALS")

// � ����� NWBattl4 � ������� ����� �� ������������, � ����� NWBattl5 - ������������

BEGIN ~KELLISAI~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArenaBreak","GLOBAL",0)GlobalLT("NWArena","GLOBAL",4)Global("KellisaiTalk","MYAREA",0)IsGabber(Player1)~ THEN BEGIN 0 // from:
  SAY ~����� ���������� � ��������. � ��������, � ������� ������ ������, ���� ��� �����������. �����, ��� ��� �������� ������� �����?~
  IF ~  Global("NWArena","GLOBAL",0)!GlobalTimerNotExpired("NextRaundNW","GLOBAL")~ THEN REPLY ~� ���� ��������� �� ������ ������.~ GOTO 1
  IF ~  Global("NWArena","GLOBAL",0)GlobalTimerNotExpired("NextRaundNW","GLOBAL")~ THEN REPLY ~� ���� ��������� �� ������ ������.~ GOTO 22
  IF ~  Global("NWArena","GLOBAL",1)GlobalTimerNotExpired("NextRaundNW","GLOBAL")~ THEN REPLY ~� ���� ������� � ���������� ������.~ GOTO 2
  IF ~  Global("NWArena","GLOBAL",1)GlobalTimerExpired("NextRaundNW","GLOBAL")~ THEN REPLY ~� ���� ������� � ���������� ������.~ GOTO 3
  IF ~  Global("NWArena","GLOBAL",2)GlobalTimerNotExpired("NextRaundNW","GLOBAL")~ THEN REPLY ~� ���� ������� � ���������� ������.~ GOTO 4
  IF ~  Global("NWArena","GLOBAL",2)GlobalTimerExpired("NextRaundNW","GLOBAL")~ THEN REPLY ~� ���� ������� � ���������� ������.~ GOTO 5
  IF ~  Global("NWArena","GLOBAL",3)GlobalTimerNotExpired("NextRaundNW","GLOBAL")~ THEN REPLY ~� ���� ������� � ���������� ������.~ GOTO 6
  IF ~  Global("NWArena","GLOBAL",3)GlobalTimerExpired("NextRaundNW","GLOBAL")~ THEN REPLY ~� ���� ������� � ���������� ������.~ GOTO 7
  IF ~~ THEN REPLY ~��� �� �����������? ������� ������?~ GOTO 8
  IF ~~ THEN REPLY ~����� ��� �������?~ GOTO 9
  IF ~~ THEN REPLY ~� ����� ��� �������� ����.~ GOTO 10
  IF ~~ THEN REPLY ~�� �������.~ GOTO 11
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~����� ������. �� ������ ������� � �������. �����.~
  IF ~~ THEN DO ~SetGlobal("Encounter","MYAREA",1)ClearAllActions()StartCutSceneMode()StartCutScene("NWBattl1")~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~��������, �� ���� ��� ������� �����. ��� �������� ���������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~����������. ���� ��� ����� � ���� ���.~
  IF ~~ THEN DO ~SetGlobal("Encounter","MYAREA",2)ClearAllActions()StartCutSceneMode()StartCutScene("NWBattl2")~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~��������, �� � ����� ������ ��� ���������� ���, ��� ����� ����� �� ��������������. ���������, ���� ������ ��������� � ���.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY ~����������. ���� ���� �� �����.~
  IF ~~ THEN DO ~SetGlobal("Encounter","MYAREA",3)ClearAllActions()StartCutSceneMode()StartCutScene("NWBattl3")~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.6
  SAY ~��������, �� ������ ��� ������ ������ ������. ��� �������� ��������� � ��� �������, ���� ������ ��� �� �������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.7
  SAY ~����, �� ������ ������� � ��������. ����� ��� �����. � ���� ���� ��� ����� �� ������.~
  IF ~~ THEN REPLY ~��� ����� �������, �� ��� ��?~ GOTO 12
  IF ~~ THEN REPLY ~��������!~ DO ~SetGlobal("Encounter","MYAREA",4)ClearAllActions()StartCutSceneMode()StartCutScene("NWBattl4")~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.8
  SAY ~���-���, � � ��������, � �����, ����� ����. � �����, ����� ����� �� ���� � �����, ����� ��� ��� �������. �� ������ ������ �������. ������ ������� �����? ����� ���� ������������� ����� � ������. � ���� ���.~
  IF ~  Global("NWArena","GLOBAL",0)~ THEN REPLY ~� ���� ��������� �� ������ ������.~ GOTO 1
  IF ~  Global("NWArena","GLOBAL",1)GlobalTimerNotExpired("NextRaundNW","GLOBAL")~ THEN REPLY ~� ���� ������� � ���������� ������.~ GOTO 2
  IF ~  Global("NWArena","GLOBAL",1)GlobalTimerExpired("NextRaundNW","GLOBAL")~ THEN REPLY ~� ���� ������� � ���������� ������.~ GOTO 3
  IF ~  Global("NWArena","GLOBAL",2)GlobalTimerNotExpired("NextRaundNW","GLOBAL")~ THEN REPLY ~� ���� ������� � ���������� ������.~ GOTO 4
  IF ~  Global("NWArena","GLOBAL",2)GlobalTimerExpired("NextRaundNW","GLOBAL")~ THEN REPLY ~� ���� ������� � ���������� ������.~ GOTO 5
  IF ~  Global("NWArena","GLOBAL",3)GlobalTimerNotExpired("NextRaundNW","GLOBAL")~ THEN REPLY ~� ���� ������� � ���������� ������.~ GOTO 6
  IF ~  Global("NWArena","GLOBAL",3)GlobalTimerExpired("NextRaundNW","GLOBAL")~ THEN REPLY ~� ���� ������� � ���������� ������.~ GOTO 7
  IF ~~ THEN REPLY ~����� ��� �������?~ GOTO 9
  IF ~~ THEN REPLY ~� ����� ��� �������� ����.~ GOTO 10
  IF ~~ THEN REPLY ~�� �������.~ GOTO 11
END

IF ~~ THEN BEGIN 9 // from: 0.9
  SAY ~������� ������. �� � ���� ������ ������ ���������� � ��� ������, � �� ������ ������ �������� � ����. ������� �����, ���� �� �������� ���� �����������. �� ����� ����� ������������ ���, ����� ����� � ������� ����������� ����������. �� ���� ���������� ����������� ���������� ����������� ����� �� ���. ������ ������� � ����� �� ����� ���, ���� ������� � �����, �������� ��� �����������. ������ ���, �� ������ ������ ������ ����� ����� ����, ��� ������� ���. ���� ����� �� ����.~
  IF ~~ THEN REPLY ~������ �� ���������?~ GOTO 16
  IF ~  Global("NWArena","GLOBAL",0)~ THEN REPLY ~� ���� ��������� �� ������ ������.~ GOTO 1
  IF ~  Global("NWArena","GLOBAL",1)GlobalTimerNotExpired("NextRaundNW","GLOBAL")~ THEN REPLY ~� ���� ������� � ���������� ������.~ GOTO 2
  IF ~  Global("NWArena","GLOBAL",1)GlobalTimerExpired("NextRaundNW","GLOBAL")~ THEN REPLY ~� ���� ������� � ���������� ������.~ GOTO 3
  IF ~  Global("NWArena","GLOBAL",2)GlobalTimerNotExpired("NextRaundNW","GLOBAL")~ THEN REPLY ~� ���� ������� � ���������� ������.~ GOTO 4
  IF ~  Global("NWArena","GLOBAL",2)GlobalTimerExpired("NextRaundNW","GLOBAL")~ THEN REPLY ~� ���� ������� � ���������� ������.~ GOTO 5
  IF ~  Global("NWArena","GLOBAL",3)GlobalTimerNotExpired("NextRaundNW","GLOBAL")~ THEN REPLY ~� ���� ������� � ���������� ������.~ GOTO 6
  IF ~  Global("NWArena","GLOBAL",3)GlobalTimerExpired("NextRaundNW","GLOBAL")~ THEN REPLY ~� ���� ������� � ���������� ������.~ GOTO 7
  IF ~~ THEN REPLY ~��� �� �����������? ������� ������?~ GOTO 8
  IF ~~ THEN REPLY ~� ����� ��� �������� ����.~ GOTO 10
  IF ~~ THEN REPLY ~�� �������.~ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 0.10
  SAY ~����� ������. �� ������� ������� � �� ����������. ���, ��� ������ ��� ������.~
  IF ~~ THEN DO ~ForceSpell(LastTalkedToBy(Myself),CLERIC_HEAL)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 0.11
  SAY ~��� ������. ����� �������� ������� ����������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.1
  SAY ~� ���� ��� ����������, �� �... ��������� ����������. ������ ������ �� ��� ���, ���������? ��... ���������, ��?~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~��� ������ ���� ������. �� ��� ������.~ GOTO 13
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~��� ������ ���� ������. �� ��� ������.~ GOTO 14
  IF ~  PartyGoldGT(399)~ THEN REPLY ~� ������� ���. 400 ������� - � �� ���������� ������� ���.~ GOTO 15
  IF ~~ THEN REPLY ~��������!~ DO ~SetGlobal("Encounter","MYAREA",4)ClearAllActions()StartCutSceneMode()StartCutScene("NWBattl4")~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY ~��� ������� ���� ��� ����... �� �����... �����, ��� ����� ���������� ��� ���� ��� ������������. �� �����. ������. ���������� � ������� � ���. � ������ ����� � ��� �����. �� �������� ���� ����.~
  IF ~~ THEN REPLY ~��������!~ DO ~SetGlobal("Encounter","MYAREA",4)ClearAllActions()StartCutSceneMode()StartCutScene("NWBattl5")~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.2
  SAY ~�� �� ��������� ����� ���������. � ������ �� ������, �� �� ����. ����������� ����.~
  IF ~  PartyGoldGT(399)~ THEN REPLY ~� ������� ���. 400 ������� - � �� ���������� ������� ���.~ GOTO 15
  IF ~~ THEN REPLY ~��������!~ DO ~SetGlobal("Encounter","MYAREA",4)ClearAllActions()StartCutSceneMode()StartCutScene("NWBattl4")~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.3
  SAY ~��������... ������, �� ����� � �� �������� ���� �������. �� ������ ��� �� �����������... ������. ���������� � ������� � ���. � ������ ����� � ��� �����. �� �������� ���� ����.~
  IF ~~ THEN REPLY ~��������!~ DO ~TakePartyGold(400)SetGlobal("Encounter","MYAREA",4)ClearAllActions()StartCutSceneMode()StartCutScene("NWBattl5")~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 9.1
  SAY ~�� ������� ���, ����� �� �������� ���. � ������ ����� �� ����.~
  IF ~  Global("NWArena","GLOBAL",0)~ THEN REPLY ~� ���� ��������� �� ������ ������.~ GOTO 1
  IF ~  Global("NWArena","GLOBAL",1)GlobalTimerNotExpired("NextRaundNW","GLOBAL")~ THEN REPLY ~� ���� ������� � ���������� ������.~ GOTO 2
  IF ~  Global("NWArena","GLOBAL",1)GlobalTimerExpired("NextRaundNW","GLOBAL")~ THEN REPLY ~� ���� ������� � ���������� ������.~ GOTO 3
  IF ~  Global("NWArena","GLOBAL",2)GlobalTimerNotExpired("NextRaundNW","GLOBAL")~ THEN REPLY ~� ���� ������� � ���������� ������.~ GOTO 4
  IF ~  Global("NWArena","GLOBAL",2)GlobalTimerExpired("NextRaundNW","GLOBAL")~ THEN REPLY ~� ���� ������� � ���������� ������.~ GOTO 5
  IF ~  Global("NWArena","GLOBAL",3)GlobalTimerNotExpired("NextRaundNW","GLOBAL")~ THEN REPLY ~� ���� ������� � ���������� ������.~ GOTO 6
  IF ~  Global("NWArena","GLOBAL",3)GlobalTimerExpired("NextRaundNW","GLOBAL")~ THEN REPLY ~� ���� ������� � ���������� ������.~ GOTO 7
  IF ~~ THEN REPLY ~��� �� �����������? ������� ������?~ GOTO 8
  IF ~~ THEN REPLY ~� ����� ��� �������� ����.~ GOTO 10
  IF ~~ THEN REPLY ~�� �������.~ GOTO 11
END

IF ~~ THEN BEGIN 22 // from: 0.2
  SAY ~��������, �� ��� �������� � ������� ���������� ������ �������, ������ ����� �����, ��������� ������.~
  IF ~~ THEN EXIT
END

// ----------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArenaBreak","GLOBAL",0)GlobalGT("NWArena","GLOBAL",3)Global("KellisaiTalk","MYAREA",0)~ THEN BEGIN 17 // from:
  SAY ~����, ������� ��������. ������. ��� ������� ��� �������. �� �� ������ ��� ����������, ����� ����� ��������� ��� ������ ������.~
  IF ~~ THEN EXIT
END

// ----------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArenaBreak","GLOBAL",0)!IsGabber(Player1)GlobalLT("NWArena","GLOBAL",4)~ THEN BEGIN 18 // from:
  SAY ~�� ����� ����� ��������� ������ <CHARNAME>, � ���� �������� ������ � ���.~
  IF ~~ THEN EXIT
END

// ----------------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArenaBreak","GLOBAL",0)Global("KellisaiTalk","MYAREA",1)GlobalLT("NWArena","GLOBAL",4)IsGabber(Player1)~ THEN BEGIN 19 // from:
  SAY ~�� �������� � ��������� ����� ������ � ����� ������� �����������. �� �� ����� �������� ��������� ��� ����� ���������� �� ����� ��� �� ��������� ����, ����� ������ ��������. � ������ ������� ���������� ���� � ������� � ������� ��� ������.~
  IF ~  Global("NWArena","GLOBAL",1)~ THEN DO ~SetGlobal("KellisaiTalk","MYAREA",0)GiveItemCreate("Arena1",Player1,1,0,0)AddXPObject(Player1,20000)~ EXIT
  IF ~  Global("NWArena","GLOBAL",2)~ THEN DO ~SetGlobal("KellisaiTalk","MYAREA",0)TakePartyItem("Arena1")DestroyItem("Arena1")GiveItemCreate("Arena2",Player1,1,0,0)AddXPObject(Player1,30000)~ EXIT
  IF ~  Global("NWArena","GLOBAL",3)~ THEN DO ~SetGlobal("KellisaiTalk","MYAREA",0)TakePartyItem("Arena2")DestroyItem("Arena2")GiveItemCreate("Arena3",Player1,1,0,0)AddXPObject(Player1,40000)~ EXIT
END

// ----------------------------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArenaBreak","GLOBAL",0)Global("KellisaiTalk","MYAREA",2)IsGabber(Player1)~ THEN BEGIN 20 // from:
  SAY ~��� ���� ��������, �������, �� ������ ���������� �������� � ������ ���. �� �� ����� �������� ��������� ��� ����� ���������� �� ����� ��� �� ��������� ����, ����� ������ ��������.~
  IF ~~ THEN DO ~SetGlobal("KellisaiTalk","MYAREA",0)~ EXIT
END

// ----------------------------------------------------------------------

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArenaBreak","GLOBAL",0)Global("KellisaiTalk","MYAREA",1)Global("NWArena","GLOBAL",4)IsGabber(Player1)~ THEN BEGIN 21 // from:
  SAY ~��� ��� ��, � ��� ����� �������! �� �������� ������ ������� � ����� ��������� "��������", ������ ������� ����, ���������� � �������� �������, �� ��� ��� ��������. ����� ���� ��������� ���������� ��� � ������� � ������� ���� ��������.~
  IF ~~ THEN DO ~SetGlobal("KellisaiTalk","MYAREA",0)TakePartyItem("Arena3")DestroyItem("Arena3")GiveItemCreate("Arena4",Player1,1,0,0)AddXPObject(Player1,80000)~ EXIT
END

// ----------------------------------------------------------------------

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArenaBreak","GLOBAL",1)~ THEN BEGIN 23 // from:
  SAY ~����� ���������, ����� ���� �� ����� ������! � ����� � ������ �� ���� ��������� ���� �� �����. ����� ���� ���������� ���-������ ������, ���� ������ ������ �� ������� ��� ���������.~
  IF ~~ THEN DO ~EscapeAreaObject("To1409")~ EXIT
END

// ----------------------------------------------------------------------

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArenaBreak","GLOBAL",2)~ THEN BEGIN 24 // from:
  SAY ~�������, �� ����� �������! � ����� � ������ �� ���� ��������� ���� �� �����. ����� ���� ���������� ���-������ ������, ���� ������ ������ �� ������� ��� ���������.~
  IF ~~ THEN DO ~EscapeAreaObject("To1409")~ EXIT
END