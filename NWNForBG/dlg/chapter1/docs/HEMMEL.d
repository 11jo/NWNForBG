// ���� ������ ���������   ����������, ���������� ��������� �����������, ���� �� � ����� �������. �� �������� ����������� � �� ����� ��������, ��� ��� ������ ������.
// �������� � ��������� Nwmisc28 ���������� � ��������

BEGIN ~HEMMEL~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("Amulet","LOCALS",0)~ THEN BEGIN 0 // from:
  SAY ~�, ��, �����������. �, �, ������ ���������. ��� ��� ���� �����, � ��� ����� ������. �������, �� �������� �� ������ �������� �� ����� ������? � ���� ��� ������, � ��, �, ������, ����� � ���.~
  IF ~  See("Agnes")!StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN EXTERN ~AGNES~ 2 // �����? � �������� ����, ��� ��� ������ ��������.
  IF ~  OR(2)!See("Agnes")StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.2
  SAY ~���������� ����� ���� ���� ���������� ���, ��� ��� �������������, ��� ����� �������� �� ������� ��������, ��, ����� ����, �� ������ �������������.~
  IF ~  PartyHasItem("Mastamul")~ THEN REPLY ~���������? �������, ��� ��� ������ � ����.~ GOTO 3
  IF ~~ THEN REPLY ~��� �� ������ � �������� ������?~ GOTO 4
  IF ~~ THEN REPLY ~��� � ��� ��������?~ GOTO 5
  IF ~~ THEN REPLY ~� ���� ��� �� ��� �������. �� ��������~ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: AGNES 2
  SAY ~� ��������� �����, ��� �� �������, �������. �� ������, ��� ��� <MALEFEMALE> ������� ����������� ���������?~
  IF ~  PartyHasItem("Mastamul")~ THEN REPLY ~���������? �������, ��� ��� ������ � ����.~ GOTO 3
  IF ~~ THEN REPLY ~��� �� ������ � �������� ������?~ GOTO 4
  IF ~~ THEN REPLY ~��� � ��� ��������?~ GOTO 5
  IF ~~ THEN REPLY ~� ���� ��� �� ��� �������. �� ��������~ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY ~�������! ������ � ������ ������ � ��������� ����� �����������! �� ������, �����? ��, ����������, �����, ��� ������!~
  IF ~~ THEN REPLY ~���. � ������������� ��������� ��� ���.~ GOTO 7
  IF ~~ THEN REPLY ~��� �������� �� �������� �������������� �� ����������� ����� ��������.~ GOTO 8
  IF ~~ THEN REPLY ~� ������ ������� ��������� � ��������������� ������, �������.~ GOTO 8
  IF ~~ THEN REPLY ~������-��, � ����� �������� ��� ����.~ GOTO 9
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY ~�����, ����� ��������. � ������� ����... ��... � ������ ����, ������� ������ �������� ������������. � ����� �������, ������� ������ ��� ������� �� ��������� ������. � ����� ��������� ������ ��������, ������� ������ � ����� ���������.~
  IF ~  See("Agnes")!StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN EXTERN ~AGNES~ 3 // ������, � ���� ������� ������ ��������, ��� �� ����, �� �� ����� �� ����� �� �������.
  IF ~  OR(2)!See("Agnes")StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN GOTO 11
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY ~��, ��� �� ����� ������. ������ ��, ��� �������, ��� ��� ���-�� ��������� ����� �� ������������. �� ������ ��-�� ���������. � ����� �������, ������� ������ ��� ������� �� ��������� ������. � ����� ��������� ������ ��������, ������� ������ � ����� ���������.~
  IF ~  See("Agnes")!StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN EXTERN ~AGNES~ 3 // ������, � ���� ������� ������ ��������, ��� �� ����, �� �� ����� �� ����� �� �������.
  IF ~  OR(2)!See("Agnes")StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN GOTO 11
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY ~��, ����� ������. �� ��������. �� ������... �������� ����� ������� �������. ��. ���, ��� �� �������.~
  IF ~  See("Agnes")!StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN EXTERN ~AGNES~ 4 // �, �������, ������. ��� �� ������������� � ��������� �������� �����������.
  IF ~  OR(2)!See("Agnes")StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN GOTO 13
END

IF ~~ THEN BEGIN 7 // from: 3.1
  SAY ~��� � �������� �������� ���. ���, �������� ������� ������ �� ������������. �����, �� ���������� ���� ����� ��������� ���. � ������ ��� ����� ������ �������� ������. �� �� ����� �������� ��������, �� ���� �������� � ��������...~
  IF ~~ THEN DO ~TakePartyItem("Mastamul")SetGlobal("Amulet","LOCALS",2)SetGlobal("AmuletQuest","MYAREA",1)
GiveGoldForce(240)AddexperienceParty(24000)ActionOverride("Agnes",EscapeAreaDestroy(90))EscapeAreaDestroy(90)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.2
  SAY ~�����, �� ���� �������, � ������� ������������ �����. ���. 700 ������� � ���-��� �� �������� �����������.~
  IF ~~ THEN REPLY ~��� ����� �������. �������.~ GOTO 14
  IF ~~ THEN REPLY ~� �� �� �������, ��� � ���� ������?~ GOTO 15
  IF ~~ THEN REPLY ~� ���� ��������. �� ����������� ���� ���������.~ GOTO 16
END

IF ~~ THEN BEGIN 9 // from: 3.3
  SAY ~�... � ��� ������ �������� �� ����... � �� ����, ����� �� ���� �������. � ���� ������ ������� ��� ����������. � ���� �����... ������ ��� ������ ����, ������. � �� ���� ����, ������������� �� �� � ���.~
  IF ~~ THEN DO ~SetGlobal("Amulet","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: AGNES 3.1
  SAY ~�������� ����� ������. ������ ��� �����. �� ������, ��� ����� �������� �� ���� �������.~
  IF ~  See("Agnes")!StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN EXTERN ~AGNES~ 6 // � ������� ���� ��������� ��������. ������, ������, ��� �� ��� ����� ���� ��� �����.
  IF ~  OR(2)!See("Agnes")StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN GOTO 20
END

IF ~~ THEN BEGIN 11 // from: 5.2
  SAY ~��� ���� �� �������� � ���� ������� ����� ��������, �� �� ������ ���������.~
  IF ~~ THEN REPLY ~��� ��� ���� �������?~ GOTO 10
  IF ~~ THEN REPLY ~�� ��������� ���� ��������?~ GOTO 17
  IF ~~ THEN REPLY ~�����, � ���� ����������� � ���� ���� ���.~ GOTO 18
  IF ~  See("Agnes")!StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN REPLY ~� �� ��������� �������� ����.~ EXTERN ~AGNES~ 5
  IF ~  OR(2)!See("Agnes")StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN REPLY ~� �� ��������� �������� ����.~ GOTO 31
END

IF ~~ THEN BEGIN 12 // from: AGNES 4
  SAY ~������� ���, ��������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.2
  SAY ~��, ���� � �� ���� �� �������� ���� ����. ��� ����� ������ ���������� ������� ����������� ������������...~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14 // from: 8.1
  SAY ~��������� ��� �������� ��� ��� ������������� � ��� ����������. � ������, ���� �� �� ����������, �� ������ � ����������������� � ����� ��������.~
  IF ~~ THEN DO ~TakePartyItem("Mastamul")SetGlobal("Amulet","LOCALS",2)SetGlobal("AmuletQuest","MYAREA",1)
GiveGoldForce(700)AddexperienceParty(18000)ActionOverride("Agnes",EscapeAreaDestroy(90))EscapeAreaDestroy(90)~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 8.2
  SAY ~� ���������� �������� � ���, ��� ���� ������ ����� ������� ������, �� � ���� ������ ��� � ����� �����.~
  IF ~~ THEN REPLY ~�����, ����� ������� ����.~ GOTO 14
  IF ~~ THEN REPLY ~����� � ������� ������ ����.~ GOTO 9
END

IF ~~ THEN BEGIN 16 // from: 8.3
  SAY ~����������! � ���� ��� �������� ������! � ���� ��� �����. � �� ���� � ����� ����! � ���� ������ ������ ���!~
  IF ~~ THEN REPLY ~�����, ����� ������� ����.~ GOTO 14
  IF ~~ THEN REPLY ~����� � ������� ������ ����.~ GOTO 9
END

IF ~~ THEN BEGIN 17 // from: AGNES 3.2
  SAY ~���� ������ ��� ������ ��������� ���������. ������� ����, �� ���� ������������ ���� �������, � ����� �� ���������.~
  IF ~  See("Agnes")!StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN EXTERN ~AGNES~ 7 // � �������� ����, ��� ��� ������ ��������. �� ���� ������ �������� ���� ��������������� ��������, � �� ��� ����� ������ ��� ���.
  IF ~  OR(2)!See("Agnes")StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN GOTO 22
END

IF ~~ THEN BEGIN 18 // from: AGNES 3.3
  SAY ~�, ���� �� �� ������ ������� ���, ��� ������������� ���� �� ������������. ������ ������, �������... �� ������� �������������. �� ������, ��� ������ �������� �������, �� ���� ����� �� � ������� ����. �� ���-�� �������� �� ��������.~
  IF ~  PartyHasItem("Nwmisc28")~ THEN GOTO 24
  IF ~  !PartyHasItem("Nwmisc28")~ THEN GOTO 25
END

IF ~~ THEN BEGIN 19 // from: AGNES 5
  SAY ~�� ������, ��� ������ �������� �������, �� ���� ����� �� � ������� ����. �� ���-�� �������� �� ��������.~
  IF ~  PartyHasItem("Nwmisc28")~ THEN GOTO 24
  IF ~  !PartyHasItem("Nwmisc28")~ THEN GOTO 25
END

IF ~~ THEN BEGIN 20 // from: 10.1
  SAY ~� ���� � ����, �� ������� �������. � ������ �����... �����...~
  IF ~~ THEN REPLY ~�� ��������� ���� ��������?~ GOTO 17
  IF ~~ THEN REPLY ~�����, � ���� ����������� � ���� ���� ���.~ GOTO 18
  IF ~  See("Agnes")!StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN REPLY ~� �� ��������� �������� ����.~ EXTERN ~AGNES~ 5
  IF ~  OR(2)!See("Agnes")StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN REPLY ~� �� ��������� �������� ����.~ GOTO 31
END

IF ~~ THEN BEGIN 21 // from: AGNES 6
  SAY ~� ���� � ����, �� ������� �������. � ������ �����... �����...~
  IF ~~ THEN REPLY ~�� ��������� ���� ��������?~ GOTO 17
  IF ~~ THEN REPLY ~�����, � ���� ����������� � ���� ���� ���.~ GOTO 18
  IF ~  See("Agnes")!StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN REPLY ~� �� ��������� �������� ����.~ EXTERN ~AGNES~ 5
  IF ~  OR(2)!See("Agnes")StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN REPLY ~� �� ��������� �������� ����.~ GOTO 31
END

IF ~~ THEN BEGIN 22 // from: 17.2
  SAY ~���������� ���� ���� ����������� ����. ��� �� �������� �������� �������� ����, ��� �� ��������. � ����� ������, ������ ����� ����� ��� ����.~
  IF ~~ THEN REPLY ~��� ������ '�����'?~ GOTO 26
  IF ~~ THEN REPLY ~��� ��� ���� �������?~ GOTO 10
  IF ~~ THEN REPLY ~�����, � ���� ����������� � ���� ���� ���.~ GOTO 18
   IF ~  See("Agnes")!StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN REPLY ~� �� ��������� �������� ����.~ EXTERN ~AGNES~ 5
  IF ~  OR(2)!See("Agnes")StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN REPLY ~� �� ��������� �������� ����.~ GOTO 31
END

IF ~~ THEN BEGIN 23 // from: AGNES 7
  SAY ~������ ��� �� ��������, �������. �� ��� �����, ��� �������� �� �������� ��������. � ����� ������, ��� ��� ������ ������. �������� ��������.~
  IF ~~ THEN REPLY ~��� ������ '�����'?~ GOTO 26
  IF ~~ THEN REPLY ~��� ��� ���� �������?~ GOTO 10
  IF ~~ THEN REPLY ~�����, � ���� ����������� � ���� ���� ���.~ GOTO 18
  IF ~  See("Agnes")!StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN REPLY ~� �� ��������� �������� ����.~ EXTERN ~AGNES~ 5
  IF ~  OR(2)!See("Agnes")StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN REPLY ~� �� ��������� �������� ����.~ GOTO 31
END

IF ~~ THEN BEGIN 24 // from: 18.1
  SAY ~� ���, ������ �����, ��� ���� ���������� �� ��������, �� ���� ������ ������ ���� �����. ��� �� ����� �� ������... � ����� �����. ����������, ������� ��� ������, ���� �������. �� ��� ����� ���� �����������. � ����� �� �������� ��������; ������ ���� ������� ��, ��� ��� �����������.~
  IF ~~ THEN DO ~SetGlobal("Amulet","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 18.2
  SAY ~���, ������ ����� ��� ���������� �� ��������. � � ����� ������� ��������, ��� ��� ��� ��� ��� ����� �� � ����. ����������, ������� ��� ������, ���� �������. �� ��� ����� ���� �����������. � ����� �� �������� ��������; ������ ���� ������� ��, ��� ��� �����������.~
  IF ~~ THEN DO ~SetGlobal("Amulet","LOCALS",1)GiveItem("Nwmisc28",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 22.1
  SAY ~��, ���� �������, ��� �� ����� � ������ ������� ������������� ��������. ��� ������ �� ����� �������� ����� ������ ���������.~
  IF ~  See("Agnes")!StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN EXTERN ~AGNES~ 8 // ������ ������, ��� �� ������� ������� ����, ����� ������������ ��, ������.
  IF ~  OR(2)!See("Agnes")StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27 // from: AGNES 8
  SAY ~��, � ���� � ����, ��� � ���� ���� ���� � ������ ����������, �� ������ ��� ����� ��� � ��� ���, ��� ���������� ���������� ����������� ����������.~
  IF ~~ THEN REPLY ~��� ��� ���� �������?~ GOTO 10
  IF ~~ THEN REPLY ~�����, � ���� ����������� � ���� ���� ���.~ GOTO 18
  IF ~  See("Agnes")!StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN REPLY ~� �� ��������� �������� ����.~ EXTERN ~AGNES~ 5
  IF ~  OR(2)!See("Agnes")StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN REPLY ~� �� ��������� �������� ����.~ GOTO 31
END

// ----------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("Amulet","LOCALS",0)~ THEN BEGIN 28 // from:
  SAY ~�������, �� �������� �� ������ �������� �� ����� ������? � ���� ��� ������, � ��, �, ������, ����� � ���.~
  IF ~  See("Agnes")!StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN EXTERN ~AGNES~ 2 // �����? � �������� ����, ��� ��� ������ ��������.
  IF ~  OR(2)!See("Agnes")StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN GOTO 1
END

// ----------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Amulet","LOCALS",1)~ THEN BEGIN 29 // from:
  SAY ~������������ ��� ���. � �������, � ��� ���� ��� ���� ������� �������? � �� ��������� ������� ������ ������� ��� ����� �������.~
  IF ~  PartyHasItem("Mastamul")~ THEN REPLY ~���, � ���� ��� ������.~ GOTO 3
  IF ~~ THEN REPLY ~��� �����, ����� �� ��������� ���-���.~ GOTO 30
  IF ~~ THEN REPLY ~� �������, ��� ��� ����� �������.~ GOTO 18
  IF ~~ THEN REPLY ~� ���� ��� �� ��� �������. �� ��������~ GOTO 6
END

IF ~~ THEN BEGIN 30 // from: 29.2
  SAY ~���� ��� ��� �����, ������ � �� ����, ��� ��� ����� ��������.~
  IF ~~ THEN REPLY ~��� ��� ���� �������?~ GOTO 10
  IF ~~ THEN REPLY ~�� ��������� ���� ��������?~ GOTO 17
END

IF ~~ THEN BEGIN 31 // from: 3.4
  SAY ~����������, �������, �� �����������. ���� ������ �������������� ����, � � ������ �� ���� �������, ����� ����, ��� ���������� ����, ��� ��.~
  IF ~~ THEN GOTO 19
END

