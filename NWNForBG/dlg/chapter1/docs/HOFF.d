// ���� ���� �������   ��� ������� ������ ���������� ���������. �� ����� ����� - ������ ������ � �������� ����.

BEGIN ~HOFF~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("TamoraQuest","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~����������. � ��� �� ����. ��� �� � ��� �������������.~
  IF ~~ THEN EXIT
END

// -----------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("TamoraQuest","GLOBAL",1)Global("HoffScared","GLOBAL",0)Global("HoffHasMisc19","GLOBAL",0)~ THEN BEGIN 1 // from:
  SAY ~��� ��� �����? � �� ������������ � ������������. � ����� �� ��������� ��� ��� ����� �������?~
  IF ~  PartyHasItem("Nwmisc19")~ THEN REPLY ~�� ������ ������� �� ����� ������� �����? ������?~ GOTO 2
  IF ~~ THEN REPLY ~������. �� ��������.~ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY ~����� ����. ��� ���������� �������. �����, ����� �� ��� ���� ��������. �� ����, ���, �� ���. *�* ����� �� ��� ���� ��������. ��! � ���-�� ���? ��� �������� ��� �����������? ��! ���-�� �� �������.~
  IF ~~ THEN REPLY ~������ ������? ��� ��. � ������ ����!~ GOTO 4
  IF ~~ THEN REPLY ~������ �� �����? ������. ������ � ���� �������� ��� ����!~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY ~�����.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 2
  SAY ~��, ��, ��! ��������! �����, �� ����� ������������? ��� �������? �����, �� ������ ������?~
  IF ~~ THEN REPLY ~�� ������. ����!~ GOTO 5
  IF ~~ THEN REPLY ~�� ���� ������. ���� ��� ��� ������� �� - ������!~ GOTO 6
  IF ~~ THEN REPLY ~������. ��� �� �����������?~ GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY ~�����, �����! ��� ���� �� �����! ��!~
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.2
  SAY ~�����, �����! ��� ���� �� �����! ��!~
  IF ~~ THEN DO ~SetGlobal("HoffScared","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY ~��� � � �����. ���� �� �� ���� ��� ����������, �� �� �� �� ��������� �����. ���, � ��� ��� 400 ������� �� �� ������. � ���� ����� �����, � ��� � ��� ������, ����� ������, ��� ������ � ����. ��-��!~
  IF ~~ THEN REPLY ~�� ������. ����!~ GOTO 5
  IF ~~ THEN REPLY ~�� ���� ������. ���� ��� ��� ������� �� - ������!~ GOTO 6
  IF ~~ THEN REPLY ~�� ����� ���. ��� ��� ��������. � ����� ���.~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY ~���, � � ������� �����, ��� ������ ��� ������ ������ ��� � ���� �� �������! ������������, ��������. ��� ���� ��� ����������, ��� ��������� ������. �� ��� ����������.~
  IF ~~ THEN DO ~SetGlobal("HoffHasMisc19","GLOBAL",1)TakePartyItem("Nwmisc19")GiveGoldForce(400)~ EXIT
END

// -----------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("TamoraQuest","GLOBAL",1)Global("HoffScared","GLOBAL",1)~ THEN BEGIN 9 // from:
  SAY ~�������� ��� � � �����! � ������ �� ������� � ���� �������! ��� ���� �� �����!~
  IF ~~ THEN EXIT
END

// ----------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("TamoraQuest","GLOBAL",1)Global("HoffHasMisc19","GLOBAL",1)~ THEN BEGIN 10 // from:
  SAY ~��! ������ ����� � ������, ��� �� ������ � ����. � ������! ������������! ����� �������!~
  IF ~~ THEN EXIT
END

