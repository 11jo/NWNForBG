// ����� ������������  ���������� - ������ �����. ��� ���� ������ ������� ��������� ��������� ��� ������. ��� ����� �� ���� ���������� �����������, ���� �� �� ��������� ����� ������������� ����.
BEGIN ~HARLNWN1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Gender(LastTalkedToBy(Myself),MALE)~ THEN BEGIN 0 // from:
  SAY ~��, ���... ��� ������, ���� ����� ����, ���� ���� �������� ����� � ����� ��������, ��� �? ����� �� ���� �������.~
  IF ~~ THEN REPLY ~������ �� ��� ������ ��������� ��������?~ GOTO 1
  IF ~~ THEN REPLY ~���� �������? ����? �� �� ������.~ GOTO 2
  IF ~~ THEN REPLY ~� ���� ����. � ���� ����, ���?~ GOTO 2
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~�� �����, ������. ������, ������� ��� �� ������� ����� ����������.~
  IF ~~ THEN REPLY ~������ �� �����, �� �����? �� ������ � ������ ������ � ���������.~ GOTO 5
  IF ~~ THEN REPLY ~��� ���� ���������� �� ����� �������?~ GOTO 6
  IF ~~ THEN REPLY ~�� ����� �� �� ���������� ��� ���-������ � ����?~ GOTO 7
  IF ~~ THEN REPLY ~���-������ ���������� � ���� ����� ������?~ GOTO 8
  IF ~~ THEN REPLY ~��� ����� ����������������.~ GOTO 9
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~��, �� ��, ��. � ���� ����, ��� ���-�� �������, � � ���� ���. ������ ������ � ���� ���������, �� � ���� ��� ����. ��� �� ����-�� ������, ��� ��� � ������ ������ � �������?~
  IF ~~ THEN REPLY ~������ �� ��� ������ ��������� ��������?~ GOTO 1
  IF ~~ THEN REPLY ~� ���� ����?! ���� �� ����!!~ GOTO 10
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~�... ���������� ������� ������ �� ������ ���������, <LADYLORD>... �� ������ ����� �������. �� �������� �� ��� �������?~
  IF ~~ THEN REPLY ~������� ������ �� ����? ��� ��.~ GOTO 10
  IF ~~ THEN REPLY ~� ���� ��������������. ��������� ������� � �������������� ������.~ GOTO 11
  IF ~  PartyGoldLT(10)~ THEN REPLY ~� ���� ������ ���.~ GOTO 12
  IF ~  PartyGoldGT(1)~ THEN REPLY ~���... ������ �������.~ DO ~TakePartyGold(1)SetGlobal("Alms","LOCALS",1)~ GOTO 13
  IF ~  PartyGoldGT(99)~ THEN REPLY ~������ 100 �������. ����� ���� ������ �����, ����� ������������.~ DO ~TakePartyGold(100)SetGlobal("Alms","LOCALS",1)ReputationInc(1)~ GOTO 14
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~��, ������� ���.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY ~���? � ����� ���� ����� �� �������. � ���� ���� ����� ���. � � �� ����� � ����� ������� �����, �� �� ���.~
  IF ~~ THEN REPLY ~������ �� ������� � ����� ������� �����?~ GOTO 17
  IF ~~ THEN REPLY ~��� ���� ���������� �� ����� �������?~ GOTO 6
  IF ~~ THEN REPLY ~�� ����� �� �� ���������� ��� ���-������ � ����?~ GOTO 7
  IF ~~ THEN REPLY ~���-������ ���������� � ���� ����� ������?~ GOTO 8
  IF ~~ THEN REPLY ~��� ����� ����������������.~ GOTO 9
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY ~��! �������, ���� ������� �� ������ ���� ������� �� ���� �� ���� ������������, ��� �����������? ����� ���, ����� � ����. ���� � ���� ������, ��� ��� ������, ��� �����. �������� � ����, ��� ���. ��� ��� � ���������� � ����� ������� �����, ����� ������� ����������. ��, ��� ���� ���� ����. ��� ���� � ������ �������... ��� �� �� ���������. �� ���� ����� ������������, ��� ������... � � �� ����� �� ���������.~
  IF ~~ THEN REPLY ~�� ��� ����� ���� �� ����� ������...~ GOTO 16
  IF ~~ THEN REPLY ~������ �� �����, �� �����? �� ������ � ������ ������ � ���������.~ GOTO 5
  IF ~~ THEN REPLY ~�� ����� �� �� ���������� ��� ���-������ � ����?~ GOTO 7
  IF ~~ THEN REPLY ~���-������ ���������� � ���� ����� ������?~ GOTO 8
  IF ~~ THEN REPLY ~��� ����� ����������������.~ GOTO 9
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY ~� ����� ���� ���� ������� � ����. � ��������, �� ������������ �����. ��� ��� �� ������ ���� �������� �����, �?~
  IF ~~ THEN REPLY ~�� ������ ���-����, ��� ����� �� �������� ��?~ GOTO 15
  IF ~~ THEN REPLY ~�� ������� �� �� � �����-������ �������� �������� � ���� ���������?~ GOTO 18
  IF ~~ THEN REPLY ~��� �� �������� ������ ������ ������.~ GOTO 19
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 1.4
  SAY ~� ������ ������ ������ ���-�� ����������. � ����� ������ �� ����, ����� ����� ��������� ���� ���������.~
  IF ~~ THEN REPLY ~�� ������� �� �� ����-������ �����������?~ GOTO 20
  IF ~~ THEN REPLY ~��� �� �������� ���������� �� ������, ���� �� ������, ��� ��� ����� �������.~ GOTO 21
  IF ~~ THEN REPLY ~��� �� �������� ������ ������ ������.~ GOTO 19
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 1.5
  SAY ~���, �����, ������� ��� ���������� ������, ����� � ������ ��������. ������ ����������, �����, ����� ��� �������� ����� � �� ������ ������ ����.~
  IF ~~ THEN REPLY ~��� ���� ���������� �� ����� �������?~ GOTO 6
  IF ~~ THEN REPLY ~�� ����� �� �� ���������� ��� ���-������ � ����?~ GOTO 7
  IF ~~ THEN REPLY ~���-������ ���������� � ���� ����� ������?~ GOTO 8
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 3.1
  SAY ~����� �������, <LADYLORD>, ���� ����������. ���� ��� ���� �����.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 3.2
  SAY ~�... ���. ���, <LADYLORD>. �������, �� ��� ����� ��� �� ������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from: 3.3
  SAY ~����� ����� ����� �������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13 // from: 3.4
  SAY ~�������, <LADYLORD>, �� ������ ����. ��� ����� ������ �������, ������� ���.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14 // from: 3.5
  SAY ~�... �� ������� �����, <LADYLORD>! ���������� ���, ���������� ���� ������! ��� �����... ��� ����� ����� ����, ����� ���� �� ������. ���������� ���!!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15 // from: 7.1
  SAY ~���. ��, �������, ������ ������� � ��������, �� ���� ��� �� � ����. ������� � �������, ����� �� ��� �� ����������. ������� � ����� ������� �����, ������, �� ������ �����. � �����, �� ����� ������ ������ ��� ��������. ������ �����, ���.~
  IF ~~ THEN REPLY ~��� ��� �� ������ ��� ����������?~ GOTO 22
  IF ~~ THEN REPLY ~�� ������� �� �� � �����-������ �������� �������� � ���� ���������?~ GOTO 18
  IF ~~ THEN REPLY ~��� �� �������� ������ ������ ������.~ GOTO 19
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 16 // from: 6.1
  SAY ~���� � ����, �� ��� ������? ��, ����� � ����. �� � ���� ���� �����, � ��� �������. ��� ��������� ��������. ��� ��� ��� ����� ����� �����. � ��� ��, ��� �����, ���� ���� �� ������� ������ ������. ��� ���, ��� � ���� �������.~
  IF ~~ THEN REPLY ~������ �� �����, �� �����? �� ������ � ������ ������ � ���������.~ GOTO 5
  IF ~~ THEN REPLY ~�� ����� �� �� ���������� ��� ���-������ � ����?~ GOTO 7
  IF ~~ THEN REPLY ~���-������ ���������� � ���� ����� ������?~ GOTO 8
  IF ~~ THEN REPLY ~��� ����� ����������������.~ GOTO 9
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 17 // from: 5.1
  SAY ~���. ��� �� �������� �����, ��� ����� �����������. ���-�� � ��� �� ���, ����� � ���. � ����� ������� ����� �������� ����� ������. ���, ���, ��� ����� �����, �� �����. ���� �������, �� ����� � ��� ��� �����.~
  IF ~~ THEN REPLY ~��� ���� ���������� �� ����� �������?~ GOTO 6
  IF ~~ THEN REPLY ~�� ����� �� �� ���������� ��� ���-������ � ����?~ GOTO 7
  IF ~~ THEN REPLY ~���-������ ���������� � ���� ����� ������?~ GOTO 8
  IF ~~ THEN REPLY ~��� ����� ����������������.~ GOTO 9
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 18 // from: 7.2
  SAY ~�������� ��������? �� ����, ��������? ���, � ���� ������ ������� �������, ������� �� �������. ���� �� ��������, ��� ��� �������� ������ �� ������... ���, � �� ���� �� ���� �������. �� ����� � ��� ����� ������ �������. �� ��� ���-�� ������?~
  IF ~~ THEN REPLY ~�� ������ ���-����, ��� ����� �� �������� ����?~ GOTO 15
  IF ~~ THEN REPLY ~��� �� �������� ������ ������ ������.~ GOTO 19
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 19 // from: 7.3
  SAY ~��� �� ������ �����?~
  IF ~~ THEN REPLY ~������ �� �����, �� �����? �� ������ � ������ ������ � ���������.~ GOTO 5
  IF ~~ THEN REPLY ~��� ���� ���������� �� ����� �������?~ GOTO 6
  IF ~~ THEN REPLY ~�� ����� �� �� ���������� ��� ���-������ � ����?~ GOTO 7
  IF ~~ THEN REPLY ~���-������ ���������� � ���� ����� ������?~ GOTO 8
  IF ~~ THEN REPLY ~��� ����� ����������������.~ GOTO 9
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 20 // from: 8.1
  SAY ~�� ����� �������. ������ ����� � ����� �����, ��� ����� ���������. ��������� �� ���� ������. ������ ���, ���� ������. �� ����� ������� ���-������ ����������.~
  IF ~~ THEN REPLY ~��� �� �������� ���������� �� ������, ���� �� ������, ��� ��� ����� �������.~ GOTO 21
  IF ~~ THEN REPLY ~��� �� �������� ������ ������ ������.~ GOTO 19
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 21 // from: 8.2
  SAY ~��� ������� �������, � ������ �� ��������. ����� ��� � ����� ������� �����... �� � ���, ������ �����, ���. ��, � �����, ������ ����� �����. ����� ����� ���� ���� �������, �������� ����� � ������ ����� ������. �� ��� ������ ����������� �� ����������� �������.~
  IF ~~ THEN REPLY ~�� ������� �� �� ����-������ �����������?~ GOTO 20
  IF ~~ THEN REPLY ~��� �� �������� ������ ������ ������.~ GOTO 19
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 22 // from: 15.1
  SAY ~���. ������ ��� �������, ������� ���, ��� ����, � ���� ������� ������. ��� ��� ���-������ �����?~
  IF ~~ THEN REPLY ~�� ������� �� �� � �����-������ �������� �������� � ���� ���������?~ GOTO 18
  IF ~~ THEN REPLY ~��� �� �������� ������ ������ ������.~ GOTO 19
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 4
END

// -----------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Gender(LastTalkedToBy(Myself),FEMALE)~ THEN BEGIN 23 // from:
  SAY ~��� ���� �����, ������? ��� ����� ��������, �� ������ ��� ��� ���... ����� �� �������� ����� �� ����� � �� ���������� ����.~
  IF ~~ THEN REPLY ~������ �� ��� ������ ��������� ��������?~ GOTO 1
  IF ~~ THEN REPLY ~� ���� ����. � ���� ����, ���?~ GOTO 2
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 4
END

// -----------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Gender(LastTalkedToBy(Myself),FEMALE)~ THEN BEGIN 24 // from:
  SAY ~���������? �� ������� ��� ������� �����... � *�����* ������ �������, <LADYLORD>.~
  IF ~~ THEN REPLY ~������ �� ��� ������ ��������� ��������?~ GOTO 1
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 4
END

