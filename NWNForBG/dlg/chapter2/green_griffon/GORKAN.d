// �������� ������, ������� ������� ������, ������� 1 ������, ����� ���� ���� ����������� ���� � ������� ���, ����� �������� ��, � ����� ������������ �����������.

BEGIN ~GORKAN~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)GlobalLT("KnowsAboutMatch","GLOBAL",3)~ THEN BEGIN 0 // from:
  SAY ~��, ��? �� ��, ���� ��-�� ����� ���������� ����������, ��?~
  IF ~  Global("KnowsAboutMatch","GLOBAL",0)~ THEN REPLY ~���... ����������?~ GOTO 1
  IF ~  Global("KnowsAboutMatch","GLOBAL",0)~ THEN REPLY ~��-�, ��� ��� ����: � ����� ��-�� ����������.~ GOTO 1
  IF ~  Global("KnowsAboutMatch","GLOBAL",1)~ THEN REPLY ~��-�, ��� ��� ����: � ����� ��-�� ����������.~ GOTO 2
  IF ~~ THEN REPLY ~���, � ������ ���� �������.~ GOTO 3
  IF ~  Global("KnowsAboutMatch","GLOBAL",1)~ THEN REPLY ~��, �������. �����, ��� ����� �������� ���������.~ GOTO 4
  IF ~~ THEN REPLY ~� �����.~ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~� ��� �� ������? ������ �� �� ������. ����. ��������� ��� �����, � ���� �������� ��� � ����, ���� ���� ���������.~
  IF ~  PartyGoldGT(199)~ THEN REPLY ~�� ������, ���. 200 �������.~ GOTO 6
  IF ~  PartyGoldGT(99)~ THEN REPLY ~� ��� ��� 100.~ GOTO 7
  IF ~~ THEN REPLY ~�� ��� *�������*. ������ ��!~ GOTO 8
  IF ~~ THEN REPLY ~������ �� ����.~ GOTO 9
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY ~����� ���� ���������, ��� ���� ������� ���� ���������� �����������. ��� ������� ������ �������� ��������, ��� �� ������� ����� �������� � �� ���������� �������. �� � ����� ��� �����, ��� ����� ������� ���, ����� ��� ��� ������� ����������. � ��� *�*. ��� ��� �� ������ �������� ����� ����.~
  IF ~~ THEN REPLY ~������ �� ������������. � ������ ���.~ GOTO 10
  IF ~~ THEN REPLY ~�, � ��� ������. ����� ��� �� � ������ �� �� �������.~ GOTO 10
  IF ~~ THEN REPLY ~������, ���������� ����� ������ ������!~ GOTO 11
  IF ~~ THEN REPLY ~� �����.~ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.4
  SAY ~���� ���? �� �� �������, ������ �� ���� �� �� ����. ��������� �� ����� ��������, ��� ����� ������������, ����� ����� ������� ������� ���, ������ ��.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.5
  SAY ~��. '�������� ���������,' �� � �������. �� �� ������, ������� ������ ����� �������� ��������, ����� ����������, ��� �� ��������, �? ��� �... ���������, ����� ����, ��� ������� ��� � ��������, � ���� ���������� �� ������� ���������� ������� ���������������, ��?~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.6
  SAY ~��, ���, ��-�. ������ �� ������� ���������, �� �� � � ���� ����� ������-�� �����. ��!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1
  SAY ~��� �, ������ �������? ��� �������. ������ �������� �����������, � ����� ����, ��� �����. ����� � ���� ������ ���� �� �����, ���� �������. � �� ������� ����������. ��� ���� ������ ���� ����������, � � ���������� ������-����� ������ ������ � �������. ��� ����� ���������� �������, ������� �������.~
  IF ~~ THEN DO ~TakePartyGold(200)SetGlobal("KnowsAboutMatch","GLOBAL",1)~ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 6.1
  SAY ~��� ���, ����� ����, ���������, �� ������� ����� ����� ������� �� ��� ���� ����������. ��� �����, ��� ������� ������� ���, � ��� *�*. ��� ��� �� ������ ������ �����, <GIRLBOY>.~
  IF ~~ THEN REPLY ~������ �� ������������. � ������ ���.~ GOTO 10
  IF ~~ THEN REPLY ~�, � ��� ������. ����� ��� �� � ������ �� �� �������.~ GOTO 10
  IF ~~ THEN REPLY ~������, ���������� ����� ������ ������!~ GOTO 11
  IF ~~ THEN REPLY ~� �����.~ GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 1.2
  SAY ~�����, ���� ���� ���������� ���� ������� ���, �������� <RACE>. ������� ����, 200 �������, ������� �� 100. ������ �� ��� ������, ��� ���?~
  IF ~  PartyGoldGT(199)~ THEN REPLY ~�� ������, ���. 200 �������.~ GOTO 6
  IF ~~ THEN REPLY ~�� ��� *�������*. ������ ��!~ GOTO 8
  IF ~~ THEN REPLY ~������ �� ����.~ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 1.3
  SAY ~���? ���� � �� �������� ���� ��� ��� ����������? �� �� �� �������� ���� �������: �� �����, �� ��� �����. ��� � �������.~
  IF ~~ THEN DO ~SetGlobal("Fail","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.4
  SAY ~��� �� ��� ������, <GIRLBOY>. � ����� ����-�� ����� � �������, � ���, ������, ������ �����, ������� ������� ����.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1
  SAY ~��� �... ���������, ����� ����, ��� ������� ��� � ��������, � ���� ���������� �� ������� ���������� ������� ���������������, ��?~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.3
  SAY ~��-��! ���, *��� ���* �����, ��� ��������, ��� ��� � ����! ��-��! � ����� ��������, ���� ������� � ����� �� ������, <GIRLBOY>.~
  IF ~~ THEN EXIT
END

// -----------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("KnowsAboutMatch","GLOBAL",0)Global("Fail","LOCALS",0)~ THEN BEGIN 13 // from:
  SAY ~����� ��? ������ ������ ��� ����������, ��?~
  IF ~~ THEN REPLY ~���... ����������?~ GOTO 1
  IF ~~ THEN REPLY ~� � ��� ��� ����.~ GOTO 1
  IF ~~ THEN REPLY ~���, � ������ ���� �������.~ GOTO 3
  IF ~~ THEN REPLY ~� �����.~ GOTO 5
END

// -----------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("KnowsAboutMatch","GLOBAL",0)Global("Fail","LOCALS",1)~ THEN BEGIN 13 // from:
  SAY ~������. � ���� ����� ������� �������.~
  IF ~~ THEN EXIT
END

// -----------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)OR(2)Global("KnowsAboutMatch","GLOBAL",1)Global("KnowsAboutMatch","GLOBAL",2)~ THEN BEGIN 14 // from:
  SAY ~��! �� �� ��� � �������� �� ��������, <GIRLBOY>! � ����� �� ��������� ��� �� ���� � ����������, �� �� ����� � ����� �� ��, ��� � �� ����� ���������� �������, ������� � �������! �����?~
  IF ~~ THEN EXIT
END

// -----------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("KnowsAboutMatch","GLOBAL",2)~ THEN BEGIN 15 // from:
  SAY ~��! ������� � ���� ����, �� ���� �� � ��� ��������� ����������! � ������ �������� ��� ���� ����������. �� �� �����!~
  IF ~~ THEN DO ~Enemy()Attack(Player1)~ EXIT
END
