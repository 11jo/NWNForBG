// ����-����� ������� ���� ����� ������� ���������� ���� ������ (���� ������)   ��������� �������� AreaCheck

BEGIN ~SOLOMON~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)AreaCheck("NW2009")~ THEN BEGIN 0 // from:
  SAY ~��� ��������, ��� � ��� �������� ����������� ���������, �� �� ����� ������������, �������� ���.~ [SOLOM052]
  IF ~~ THEN REPLY ~��� ���� �� ������ ���������?~ GOTO 1
  IF ~~ THEN REPLY ~��� ������� ��� ��� ���?~ GOTO 2
  IF ~~ THEN REPLY ~��� ���� ������ �� ������?~ GOTO 3
  IF ~~ THEN REPLY ~� ������ �� �����...~ GOTO 4
  IF ~~ THEN REPLY ~�� ������� ��� �����.~ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~��... �������� ��� ��������, <SIRMAAM>. � ���������� �� ����� ��� ���������, ������ ��� ��� ������ ��� ���������...~
  IF ~~ THEN REPLY ~��� ������� ��� ��� ���?~ GOTO 2
  IF ~~ THEN REPLY ~����� ���� ��� ��������?~ GOTO 3
  IF ~~ THEN REPLY ~�� ������� ��� �����.~ GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~���?... �, �� ����� � �������, ��� ��� ������� � ����.~
  IF ~~ THEN REPLY ~��� ���� ������ �� ������?~ GOTO 3
  IF ~~ THEN REPLY ~�� ������� ��� �����.~ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~���... ��, ��������, ��� ����� ��������������, ��� �� ������������� ���, � ��� � �����. � �� ���� ��������� ������.~
  IF ~~ THEN REPLY ~� <CHARNAME>. � ���� ����-��?~ GOTO 5
  IF ~~ THEN REPLY ~���� �� �� ��� �������?~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~� ����� ����� - �� ���� ������ ����� ����� �� �������� � ����������� �����������. ����������, ��� ������ ������� ��� ������!~
  IF ~~ THEN REPLY ~��� ���� ������ �� ������?~ GOTO 5
  IF ~~ THEN REPLY ~�� ������� ��� �����.~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY ~��������, �... ��� ����� ���� ��������������, ��� ��� � ������ ��. � ���� ��� �������������. � ���� ����� � ������������, � �� ������ �� �����, ����� ���������� ����. ����������, ������� ��� ������ � ���� ���� �������������.~
  IF ~~ THEN REPLY ~����� ���� � ����� �������... �������.~ GOTO 6
  IF ~~ THEN REPLY ~� ������ ������, ������ ��� ������.~ GOTO 7
  IF ~~ THEN REPLY ~���, ��������. ��� ��� �� �����.~ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY ~�� ����, ���������� �� ���, �� ��� ������ ��������� ��� �����. �������, ��� � ��� ��������. ������� ��� ���, <CHARNAME>... ��������!~
  IF ~~ THEN DO ~GiveItem("SolRing",Player1)SetGlobal("SolomonRing","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY ~�, ���, ���! �� �������� ���, <CHARNAME>! �� ����, ��������� �� ���, �� ��� ��� ������ ��������� �����. � �������, ��� ��� �������� ����� � ����... � ������� ����� ��� ���� ������. � ����� ������... ���, ��������� ��� �� �����, <CHARNAME>.~
  IF ~~ THEN DO ~GiveItem("SolRing",Player1)SetGlobal("SolomonRing","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.3
  SAY ~��, �... ��� ����� �������� ������! ����������, ��������! � ����� ������, ������ ��� ����� ��� � ����� ���� ����� ��� - �������� ��� ��� �� ��� ��, ��� �� �������!~
  IF ~~ THEN REPLY ~����� ������. �������.~ GOTO 6
  IF ~~ THEN REPLY ~���� ���� ������������� ��� ������, �� ������ �� ���� �� ���� ��� ���-������ ��������������?~ GOTO 9
  IF ~~ THEN REPLY ~���, � �� ������ ���� ������.~ GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 8.2
  SAY ~�... �������. ��� ���� ��� ������, ������� � ���� ����. ��� �������, �� � ��� ������ ��� ���� ������ � �������. �� ����, ���������� �� ���, �� ��� ������ ��������� ��� �����. �������, ��� � ��� ��������. ������� ��� ���, <CHARNAME>... ��������!~
  IF ~~ THEN DO ~GiveItem("SolRing",Player1)SetGlobal("SolomonRing","GLOBAL",1)GivePartyGold(400)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.3
  SAY ~��� �����! ����� ������, ������, �� �� ����� �����, ��� ��� ��������!~
  IF ~~ THEN EXIT
END

// ---------------------------------------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)AreaCheck("NW2009")~ THEN BEGIN 11 // from:
  SAY ~�� ��� ��������.~ [SOLOM050]
  IF ~~ THEN EXIT
END

// -----------------------------------------------------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  AreaCheck("NW2300")GlobalLT("SolomonRing","GLOBAL",3)~ THEN BEGIN 12 // from:
  SAY ~��������, �����, ���� �� ����� ����������� � ���� ������...~ [SOLOM056]
  IF ~  OR(2)Global("SolomonRing","GLOBAL",1)Global("SolomonRing","GLOBAL",2)~ THEN REPLY ~�� �������� � ������? ��� ��� � ��� ��������?!~ GOTO 13
  IF ~  Global("SolomonRing","GLOBAL",0)~ THEN REPLY ~�� �������� � ������? ��� ��� � ��� ��������?!~ GOTO 14
  IF ~~ THEN REPLY ~��������� ��� ���� �� ���� �������, �� ������� �� ����� ����������� �����...~ GOTO 15
  IF ~~ THEN REPLY ~��� ������, ��� � ��������� ���-�� ��� �����, �?~ GOTO 16
  IF ~    OR(2)Global("SolomonRing","GLOBAL",1)Global("SolomonRing","GLOBAL",2)~ THEN REPLY ~������� �� �����. � ��� ��� ����������...~ GOTO 13
  IF ~    Global("SolomonRing","GLOBAL",0)~ THEN REPLY ~������� �� �����. � ��� ��� ����������...~ GOTO 17
  IF ~  OR(2)Global("SolomonRing","GLOBAL",1)Global("SolomonRing","GLOBAL",2)~ THEN REPLY ~�����, ��� ����� �������� ������ ������...~ GOTO 13
  IF ~  Global("SolomonRing","GLOBAL",0)~ THEN REPLY ~�����, ��� ����� �������� ������ ������...~ GOTO 18
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY ~� ���� ������ ��� ������! ������� �� ������? ��� ������ ���� ����� ��� ��� ����� ������ �� �����! ������, ��� ���� ������������, '�����'!~
  IF ~~ THEN DO ~SetGlobal("SolomonRing","GLOBAL",3)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.2
  SAY ~� ���� ��, ��� �� ������ ����, ���� �� �������, <CHARNAME>. ��� ������������, "�����"!~
  IF ~~ THEN DO ~SetGlobal("SolomonRing","GLOBAL",3)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.3
  SAY ~�� ������ �����������, �� ������� �����, � ��� ��� �����. ����� ������������ �� ����� �����? ����� ����� �� � ���� ������.~
  IF ~  OR(2)Global("SolomonRing","GLOBAL",1)Global("SolomonRing","GLOBAL",2)~ THEN REPLY ~�� �������� � ������? ��� ��� � ��� ��������?!~ GOTO 13
  IF ~  Global("SolomonRing","GLOBAL",0)~ THEN REPLY ~�� �������� � ������? ��� ��� � ��� ��������?!~ GOTO 14
  IF ~~ THEN REPLY ~��� ������, ��� � ��������� ���-�� ��� �����, �?~ GOTO 16
  IF ~    OR(2)Global("SolomonRing","GLOBAL",1)Global("SolomonRing","GLOBAL",2)~ THEN REPLY ~������� �� �����. � ��� ��� ����������...~ GOTO 13
  IF ~    Global("SolomonRing","GLOBAL",0)~ THEN REPLY ~������� �� �����. � ��� ��� ����������...~ GOTO 17
  IF ~  OR(2)Global("SolomonRing","GLOBAL",1)Global("SolomonRing","GLOBAL",2)~ THEN REPLY ~�����, ��� ����� �������� ������ ������...~ GOTO 13
  IF ~  Global("SolomonRing","GLOBAL",0)~ THEN REPLY ~�����, ��� ����� �������� ������ ������...~ GOTO 18
END

IF ~~ THEN BEGIN 16 // from: 12.4
  SAY ~�� �������� ���������! �� ��� �����������, ������� �������! ������ ��� ���� ����� �����, ��� �� �������.~
  IF ~  OR(2)Global("SolomonRing","GLOBAL",1)Global("SolomonRing","GLOBAL",2)~ THEN REPLY ~�� �������� � ������? ��� ��� � ��� ��������?!~ GOTO 13
  IF ~  Global("SolomonRing","GLOBAL",0)~ THEN REPLY ~�� �������� � ������? ��� ��� � ��� ��������?!~ GOTO 14
  IF ~~ THEN REPLY ~��������� ��� ���� �� ���� �������, �� ������� �� ����� ����������� �����...~ GOTO 15
  IF ~    OR(2)Global("SolomonRing","GLOBAL",1)Global("SolomonRing","GLOBAL",2)~ THEN REPLY ~������� �� �����. � ��� ��� ����������...~ GOTO 13
  IF ~    Global("SolomonRing","GLOBAL",0)~ THEN REPLY ~������� �� �����. � ��� ��� ����������...~ GOTO 17
  IF ~  OR(2)Global("SolomonRing","GLOBAL",1)Global("SolomonRing","GLOBAL",2)~ THEN REPLY ~�����, ��� ����� �������� ������ ������...~ GOTO 13
  IF ~  Global("SolomonRing","GLOBAL",0)~ THEN REPLY ~�����, ��� ����� �������� ������ ������...~ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 12.6
  SAY ~������ ���. ���� �� ���������� ����� ������, �� ����� ������ ���������. ��������, ��� ��� ������ ������������, "�����"!~
  IF ~~ THEN DO ~SetGlobal("SolomonRing","GLOBAL",3)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.6
  SAY ~��� ��� ��� ��� ����, ��������. �� ������ �� �������� ������ �������������. ��������, ��� ��� ������ ������������, "�����"!~
  IF ~~ THEN DO ~SetGlobal("SolomonRing","GLOBAL",3)EscapeArea()~ EXIT
END

// -------------------------------------------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("SolomonRing","GLOBAL",3)AreaCheck("NW2400")~ THEN BEGIN 19 // from:
  SAY ~� ��� �����������, �� �� �� �����������.~ [SOLOM054]
  IF ~~ THEN DO ~SetGlobal("CultHostile","MYAREA",1)Shout(HELP101)Shout(HELP79)Shout(HELP83)Shout(HELP_ME_GROUP151)Enemy()~ EXIT
END
