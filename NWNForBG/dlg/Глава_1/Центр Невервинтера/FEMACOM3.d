// ����� ������������  ���   ����������� �������   ��� ������� ����������� � ������ ����� �������� ������ ������� ������������. ��� ����� ������, �� �������. ��� �������� ����� ����������� ����, ��� ���������� ������.

BEGIN ~FEMACOM3~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~��� ��� �� ������ � ���� ����? ����������, �������.~
  IF ~~ THEN REPLY ~� ��������� �������� �� ������ � ������.~ GOTO 1
  IF ~~ THEN REPLY ~��� ���� ����� ������ ���� ��������.~ GOTO 2
  IF ~~ THEN REPLY ~� ���, ���� ����.~ GOTO 3
  IF ~~ THEN REPLY ~� �����.~ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~��� ��� �� ������, ��� ����� ����������� � ��� ���... ��� ���? � ������ �� ���� �������, �� ����� �� ���������� ���������.~
  IF ~~ THEN REPLY ~��� ����� ���������� � ������������.~ GOTO 5
  IF ~~ THEN REPLY ~��� �� ������ � ����?~ GOTO 6
  IF ~~ THEN REPLY ~�� ������� ������ ���������? �����-������ �������?~ GOTO 7
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~������ ��� ��� ����������� � ����� � ��� � ���������� � ���������! ��� ��� ��� �� ��� �����?~
  IF ~~ THEN REPLY ~� ��������� �������� �� ������ � ������.~ GOTO 1
  IF ~~ THEN REPLY ~� ���, ���� ����.~ GOTO 3
  IF ~~ THEN REPLY ~� �����.~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~�� ���������, ��� �������� � ���� ���������? ��� ��� �� ���� �����? ����� �� ��������� ����� ����� ��������� ����?~
  IF ~~ THEN REPLY ~� ��������� �������� �� ������ � ������.~ GOTO 1
  IF ~  RandomNum(2,1)
!Class(LastTalkedToBy(Myself),THIEF_ALL)
Global("Robbed","MYAREA",0)~ THEN REPLY ~� ����� ���� ����, � � ����� - ������!~ DO ~SetGlobal("Robbed","MYAREA",1)~ GOTO 9
  IF ~  RandomNum(2,2)
!Class(LastTalkedToBy(Myself),THIEF_ALL)
Global("Robbed","MYAREA",0)~ THEN REPLY ~� ����� ���� ����, � � ����� - ������!~ DO ~SetGlobal("Robbed","MYAREA",1)~ GOTO 10
  IF ~  Class(LastTalkedToBy(Myself),THIEF_ALL)
Global("Robbed","MYAREA",0)~ THEN REPLY ~� ����� ���� ����, � � ����� - ������!~ DO ~SetGlobal("Robbed","MYAREA",1)~ GOTO 10
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~�������. � ������ ������� � ���� �� ����... �����������, �� �� ������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY ~� �� �������, � ��� �� �����������. �����-�� �������.~
  IF ~~ THEN REPLY ~��� � ���� ������ �� ������?~ GOTO 11
  IF ~~ THEN REPLY ~��� �� ������ � ���������� ������������?~ GOTO 12
  IF ~~ THEN REPLY ~���� ��� ������.~ GOTO 13
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY ~����� ���, �� ���������� �� ���� � ���� ����. ��� �������, ��� ���� ��� ������ ��������, � � �� ���� �������� ������.~
  IF ~~ THEN REPLY ~��� ������ �� ������������� � ����������?~ GOTO 14
  IF ~~ THEN REPLY ~���� ��� ������.~ GOTO 13
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY ~������-��, ���. � ����� ���� � ���� � ������. � ����� ������ �������. � �� ���� ����� � ���, ��� ��� ����������.~
  IF ~~ THEN REPLY ~��� ����� ���������� � ������������.~ GOTO 5
  IF ~~ THEN REPLY ~��� �� ������ � ����?~ GOTO 6
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 1.4
  SAY ~��������. ����������, �������� ��� ��� ��� ��, ��� ������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.2
  SAY ~�� ���� ���� ����� �� �������. ���� ��� ��������. � ���� ������ �� ��������, ��� ��� ������, ��� ���� ����, � ����������!~
  IF ~~ THEN REPLY ~��� ����� ���������� � ������������.~ GOTO 5
  IF ~~ THEN REPLY ~��� �� ������ � ����?~ GOTO 6
  IF ~~ THEN REPLY ~�� ������� ������ ���������? �����-������ �������?~ GOTO 7
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 3.3 3.4
  SAY ~� ��� ��� ��-�� ������? � ������� ������� ����, ���� ������� �� ������, � �� ������ ������? ����� �� �� �����������!~
  IF ~~ THEN REPLY ~��������! ������� ���� ������, � �� �� � ���� ��������!~ GOTO 17
  IF ~~ THEN REPLY ~������� ���������. � ������ � ������ � ����� ���� ������.~ GOTO 1
END

IF ~~ THEN BEGIN 11 // from: 5.1
  SAY ~��, � ���� � ������ ������ � ����� �� ��������� ������. ���� ������ ������ ������, �� ��� ������� ������ ����. ��� ������ �����, ����� �����, ���������� � ������ �����. � ��� � ���� ������� ����������.~
  IF ~~ THEN REPLY ~���������� ��� � ������ ������.~ GOTO 19
  IF ~~ THEN REPLY ~���������� ��� � ������ �����.~ GOTO 20
  IF ~~ THEN REPLY ~���������� ��� � �������� ������.~ GOTO 21
  IF ~~ THEN REPLY ~���������� ��� � ������ ������� �����.~ GOTO 22
  IF ~~ THEN REPLY ~�������� ��� � ������ �����������.~ GOTO 23
END

IF ~~ THEN BEGIN 12 // from: 5.2
  SAY ~�, � �� ���� ����� ������ �� ����. ���� ����� ������ �� �������� � ������, � ������ ��� � �� ����. �� ������� �������.~
  IF ~~ THEN REPLY ~��� ���� ����� ����������� � �����?~ GOTO 15
  IF ~~ THEN REPLY ~���� ��� ������.~ GOTO 13
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 8
END

IF ~~ THEN BEGIN 13 // from: 5.3
  SAY ~������, � �������� � ����. �������, ��� �� ������ ����� �������?~
  IF ~~ THEN REPLY ~��� ����� ���������� � ������������.~ GOTO 5
  IF ~~ THEN REPLY ~��� �� ������ � ����?~ GOTO 6
  IF ~~ THEN REPLY ~�� ������� ������ ���������? �����-������ �������?~ GOTO 7
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 8
END

IF ~~ THEN BEGIN 14 // from: 6.1
  SAY ~�������� �������, ��� �� �������������� ����� ��������. �� ����. ������ ���� ���� ������� ���������� ��� ������ � ������.~
  IF ~~ THEN REPLY ~���� ��� ������.~ GOTO 13
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 8
END

IF ~~ THEN BEGIN 15 // from: 12.1
  SAY ~��, ��� ������ ����� �� �����. ����� ����� ������, ����� ���� �� �������� ����. ������, �� ������ ���, ��� � ��� �����. ��������, �� ���� ������ ���� ������. ������� �������. ������ ����� ��� ���������.~
  IF ~~ THEN REPLY ~��� ���� ������ ����������� � �����?~ GOTO 16
  IF ~~ THEN REPLY ~���� ��� ������.~ GOTO 13
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 8
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY ~�, ��� �� ����� ���������. ��� ��� ���������� �... ��������� �� �������. ������ ����, ��� ������ ������ �� ��������. ���������� �� �������, ������ ��. �������� ��������� ��, ��������, �� � �� ���� �����, ��� ��� ����������.~
  IF ~~ THEN REPLY ~���� ��� ������.~ GOTO 13
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 8
END

IF ~~ THEN BEGIN 17 // from: 10.1
  SAY ~�� ����! ����������! � ������ ���� �������� ����... � ���� ����... ������� ��� ������... ��� �������... � ����� ������.~
  IF ~~ THEN DO ~GiveGoldForce(100)ReputationInc(-1)SetGlobal("Robbed","MYAREA",2)~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 11.1
  SAY ~� ���? �� ������ ����� � ����������. ���, ������ �������� ������? ���� ���� ��������� � ��� ��� ����� ��� ������?~
  IF ~~ THEN REPLY ~���������� ��� � ������ �����.~ GOTO 20
  IF ~~ THEN REPLY ~���������� ��� � �������� ������.~ GOTO 21
  IF ~~ THEN REPLY ~���������� ��� � ������ ������� �����.~ GOTO 22
  IF ~~ THEN REPLY ~�������� ��� � ������ �����������.~ GOTO 23
  IF ~~ THEN REPLY ~���� ��� ������.~ GOTO 13
END

IF ~~ THEN BEGIN 20 // from: 11.2
  SAY ~�, ��� ����� ������ �������. ���� ��� ������������ ������� �����, � ��� ���� ��������, ��� � ��� ��� ����� ��������� �� �����. �� ���� �������������?~
  IF ~  Global("BeggarsNestDone","GLOBAL",0)~ THEN GOTO 26
  IF ~  GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN GOTO 27
END

IF ~~ THEN BEGIN 21 // from: 11.3
  SAY ~� �������, ��� ����� ����������, �� �������� ���������� �����. �� �������� ���������� ����� ����������. � �������.~
  IF ~  Global("NWNDocksDone","GLOBAL",0)~ THEN GOTO 28
  IF ~  GlobalGT("NWNDocksDone","GLOBAL",0)~ THEN GOTO 29
END

IF ~~ THEN BEGIN 22 // from: 11.4
  SAY ~������ �� � ���������� ��� � ������ �����, �� �� ����. ����, ��� ����� ���, �� ������ ���� ����, ������� ���. ������� �����������.~
  IF ~  Global("BlackLakeDone","GLOBAL",0)~ THEN GOTO 30
  IF ~  GlobalGT("BlackLakeDone","GLOBAL",0)~ THEN GOTO 31
END

IF ~~ THEN BEGIN 23 // from: 11.5
  SAY ~� ������ �� ���� � ������ �����������. ���������� ���� �������� �� ���� ��������. ��� ��������� ������.~
  IF ~  Global("PeninsulaDone","GLOBAL",0)~ THEN GOTO 32
  IF ~  GlobalGT("PeninsulaDone","GLOBAL",0)~ THEN GOTO 33
END

IF ~~ THEN BEGIN 26 // from: 20.1
  SAY ~��� ����� ������ �����. � �������� �� ������ � ���, ������. �������� �����, �������� � ���� ������ �����...~
  IF ~~ THEN REPLY ~���������� ��� � ������ ������.~ GOTO 19
  IF ~~ THEN REPLY ~���������� ��� � �������� ������.~ GOTO 21
  IF ~~ THEN REPLY ~���������� ��� � ������ ������� �����.~ GOTO 22
  IF ~~ THEN REPLY ~�������� ��� � ������ �����������.~ GOTO 23
  IF ~~ THEN REPLY ~���� ��� ������.~ GOTO 13
END

IF ~~ THEN BEGIN 27 // from: 20.2
  SAY ~������, ���-�� �� ����������� ��������� ������ ��� ���������� � ����, �� ��� ��... �����! ����������� ���� �� ����...~
  IF ~~ THEN REPLY ~���������� ��� � ������ ������.~ GOTO 19
  IF ~~ THEN REPLY ~���������� ��� � �������� ������.~ GOTO 21
  IF ~~ THEN REPLY ~���������� ��� � ������ ������� �����.~ GOTO 22
  IF ~~ THEN REPLY ~�������� ��� � ������ �����������.~ GOTO 23
  IF ~~ THEN REPLY ~���� ��� ������.~ GOTO 13
END

IF ~~ THEN BEGIN 28 // from: 21.1
  SAY ~������, ��� ������ ������� ����, � ��� ������� �����-�� ���� ����� �������� �������.~
  IF ~~ THEN REPLY ~���������� ��� � ������ ������.~ GOTO 19
  IF ~~ THEN REPLY ~���������� ��� � ������ �����.~ GOTO 20
  IF ~~ THEN REPLY ~���������� ��� � ������ ������� �����.~ GOTO 22
  IF ~~ THEN REPLY ~�������� ��� � ������ �����������.~ GOTO 23
  IF ~~ THEN REPLY ~���� ��� ������.~ GOTO 13
END

IF ~~ THEN BEGIN 29 // from: 21.2
  SAY ~������-�� � ��� ���� ������ �� ����. �� ������ ��� ������ � ������� ��� ��, ��� ���-�� �� ����������� ���������� ��������� ������� ����� � ���� � ����� �������� ��������� �������� �������!~
  IF ~~ THEN REPLY ~���������� ��� � ������ ������.~ GOTO 19
  IF ~~ THEN REPLY ~���������� ��� � ������ �����.~ GOTO 20
  IF ~~ THEN REPLY ~���������� ��� � ������ ������� �����.~ GOTO 22
  IF ~~ THEN REPLY ~�������� ��� � ������ �����������.~ GOTO 23
  IF ~~ THEN REPLY ~���� ��� ������.~ GOTO 13
END

IF ~~ THEN BEGIN 30 // from: 22.1
  SAY ~� ���� � �� ������ � ������� ������� �����. �������, ���-�� �� ���� ������ �������� ����� ������ �������������� � �������� �� �� ���, �� ���, ��� � ��� ���������!~
  IF ~~ THEN REPLY ~���������� ��� � ������ ������.~ GOTO 19
  IF ~~ THEN REPLY ~���������� ��� � ������ �����.~ GOTO 20
  IF ~~ THEN REPLY ~���������� ��� � �������� ������.~ GOTO 21
  IF ~~ THEN REPLY ~�������� ��� � ������ �����������.~ GOTO 23
  IF ~~ THEN REPLY ~���� ��� ������.~ GOTO 13
END

IF ~~ THEN BEGIN 31 // from: 22.2
  SAY ~� ���� � �� ������ � ������� ������� �����. �������, ���-�� �� ���� ������ �������� ����� ������ �������������� � �������� �� �� ���, �� ���, ��� � ��� ���������! �������� ���, ���-�� ������� ����� �����, �� ��� �� �� ��������. �������� ���� ������� �������!~
  IF ~~ THEN REPLY ~���������� ��� � ������ ������.~ GOTO 19
  IF ~~ THEN REPLY ~���������� ��� � ������ �����.~ GOTO 20
  IF ~~ THEN REPLY ~���������� ��� � �������� ������.~ GOTO 21
  IF ~~ THEN REPLY ~�������� ��� � ������ �����������.~ GOTO 23
  IF ~~ THEN REPLY ~���� ��� ������.~ GOTO 13
END

IF ~~ THEN BEGIN 32 // from: 23.1
  SAY ~������������, �������� ���� ��������� �� ����������� � � �������� ������. ������� ����, ��������� ������ �� ���������, ������ ��� ������� ����������� � ��� �����!~
  IF ~~ THEN REPLY ~���������� ��� � ������ ������.~ GOTO 19
  IF ~~ THEN REPLY ~���������� ��� � ������ �����.~ GOTO 20
  IF ~~ THEN REPLY ~���������� ��� � �������� ������.~ GOTO 21
  IF ~~ THEN REPLY ~���������� ��� � ������ ������� �����.~ GOTO 22
  IF ~~ THEN REPLY ~���� ��� ������.~ GOTO 13
END

IF ~~ THEN BEGIN 33 // from: 23.2
  SAY ~������������, �������� ���� ��������� �� ����������� � � �������� ������. ������� ����, ��������� ������ �� ���������, ������ ��� ������� ����������� � ��� �����! �����, ��� ������ ����� �����������, �� � ���� � ����� �� ����, � ��� ���� � ��� ����. � ���� ����� ����� ����� ���.~
  IF ~~ THEN REPLY ~���������� ��� � ������ ������.~ GOTO 19
  IF ~~ THEN REPLY ~���������� ��� � ������ �����.~ GOTO 20
  IF ~~ THEN REPLY ~���������� ��� � �������� ������.~ GOTO 21
  IF ~~ THEN REPLY ~���������� ��� � ������ ������� �����.~ GOTO 22
  IF ~~ THEN REPLY ~���� ��� ������.~ GOTO 13
END

// ------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)!Global("Robbed","MYAREA",2)~ THEN BEGIN 34 // from:
  SAY ~��? ��� ��� ���-������ �����? � �����������, ��� ��� ������ ��� �������������, � �� ������...~
  IF ~~ THEN REPLY ~��� ����� ���������� � ������������.~ GOTO 5
  IF ~~ THEN REPLY ~��� �� ������ � ����?~ GOTO 6
  IF ~~ THEN REPLY ~�� ������� ������ ���������? �����-������ �������?~ GOTO 7
  IF ~  RandomNum(2,1)
!Class(LastTalkedToBy(Myself),THIEF_ALL)
Global("Robbed","MYAREA",0)~ THEN REPLY ~� ����� ���� ����, � � ����� - ������!~ DO ~SetGlobal("Robbed","MYAREA",1)~ GOTO 9
  IF ~  RandomNum(2,2)
!Class(LastTalkedToBy(Myself),THIEF_ALL)
Global("Robbed","MYAREA",0)~ THEN REPLY ~� ����� ���� ����, � � ����� - ������!~ DO ~SetGlobal("Robbed","MYAREA",1)~ GOTO 10
  IF ~  Class(LastTalkedToBy(Myself),THIEF_ALL)
Global("Robbed","MYAREA",0)~ THEN REPLY ~� ����� ���� ����, � � ����� - ������!~ DO ~SetGlobal("Robbed","MYAREA",1)~ GOTO 10
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 8
END

// ------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Robbed","MYAREA",2)~ THEN BEGIN 35 // from:
  SAY ~��� ��� �� ����������? ��� �������� � ���� �� ����! ���! ������! ��� ������!~
  IF ~~ THEN EXIT
END

