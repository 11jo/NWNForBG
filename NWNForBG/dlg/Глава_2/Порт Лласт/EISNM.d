// ����-����� ��� ������������    ���� ���� 

BEGIN ~EISNM~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  !PartyHasItem("UrtRing")Global("UrtIsSaved","GLOBAL",0)!Dead("Urt")~ THEN BEGIN 0 // from:
  SAY ~� ������������ ��� - ���� �� ����� ������ �������� ����, �� ��� ����� ���.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)Dead("Urt")Global("UrtGold","GLOBAL",2)~ THEN BEGIN 1 // from:
  SAY ~�������� ������, ������ �������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)PartyHasItem("UrtRing")Global("UrtIsSaved","GLOBAL",1)!Dead("Urt")Global("UrtGold","GLOBAL",0)~ THEN BEGIN 2 // from:
  SAY ~�� ������� ��� ����� �������� �����������, <SIRMAAM>, � � ���� ���������� � ���� ���-����� �������� ����������. ��� ��������, � ��� 500 �������. ��� ���� ��� ����������, �� � ����� �� �������� � �����, ���� ��� ���������. ��� ������ � �� ���� ��������� ��� ����� - ����� �������.~
  IF ~~ THEN REPLY ~����� ����� ��� ����������. �� ����������� ��� ����.~ GOTO 3
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY ~�� ����� ����, ��� �� �������� �� ��� 200 �������.~ GOTO 4
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~�� ����� ����, ��� �� �������� �� ��� 200 �������.~ GOTO 5
  IF ~~ THEN REPLY ~��-��. ��������� ���, ��� � ��� ����, � �� ��� ������ ������� ������� �� ������.~ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY ~��������� ����� ���, ���� ���.~
  IF ~~ THEN DO ~SetGlobal("UrtGold","GLOBAL",1)GiveGoldForce(500)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY ~�������, ��� ������ ����. �� ���-�� ����� ���� ��������� ����������� - ��� ��� � ���� �������� ���� �� �� ������� ������.~
  IF ~~ THEN DO ~SetGlobal("UrtGold","GLOBAL",1)GiveGoldForce(700)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.3
  SAY ~��� ����� ��� � ����� ��������, ���� �� ����� �������� � ������ ���� �����? ������, �� ��� ����� � �� ���� ����.~
  IF ~~ THEN REPLY ~������, �� ����� ���� 500 ������� ������ ����������.~ GOTO 3
  IF ~~ THEN REPLY ~��-��. ��������� ���, ��� � ��� ����, � �� ��� ������ ������� ������� �� ������.~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 2.4
  SAY ~����, ���� ���� �����������! ����� �� ��� ���� ���� ������� � ������, �� ��� � ����, ������� ���� ������ ������.~
  IF ~~ THEN DO ~SetGlobal("UrtGold","GLOBAL",2)GiveGoldForce(1000)ReputationInc(-1)~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("UrtGold","GLOBAL",1)~ THEN BEGIN 7 // from:
  SAY ~�, ��, ������ ��� ����� ���������� ���.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN EXT01 // from: EISNF 0.1
  SAY ~������� ��� ���� �������. �������, ������������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN EXT02 // from: EISNF 1.1
  SAY ~��� ��� ����� � - � ��� ������, �����-�� �� ���, �����?~
  IF ~~ THEN DO ~SetGlobal("Stairs","MYAREA",2)~ EXIT
END






