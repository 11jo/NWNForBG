// ���������� ������ �����   ���� �������, ��������, ����������. ���� �� ��� ������������ ����, ���� ����������� ��� ����� � ��� �� ������.

BEGIN ~JOHNS~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("JohnsthDead","MYAREA",1)Global("Follow","LOCALS",0)GlobalLT("SedosQuest","GLOBAL",3)Global("PeninsulaDone","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~��������� �� ������, � ��� ��� ���������� �����, ����� ��� ����� ����� ����.~
  IF ~~ THEN REPLY ~��� ��? � ��� ������� �� �����?~ GOTO 1
  IF ~~ THEN REPLY ~� ���� �� �����, ��� � ������ ���? ������ ������...~ GOTO 2
  IF ~~ THEN REPLY ~�� ��������� �� ��� �� ����� �� ������?~ GOTO 3
  IF ~~ THEN REPLY ~��� ����� ����. ��������� � ����.~ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~� ��������� ���� ���������. � ��� ����� �� ����� �������� ����� �����... ��� *���* ��������!~
  IF ~~ THEN REPLY ~��� ����� �� ���?~ GOTO 5
  IF ~~ THEN REPLY ~����� ����� ������������ ����������, ����� �������� ���?~ GOTO 6
  IF ~~ THEN REPLY ~��� �� ������ �� ���� ������?~ GOTO 7
  IF ~~ THEN REPLY ~�� ��������� �� ��� �� ����� �� ������?~ GOTO 3
  IF ~~ THEN REPLY ~��� ����� ����. ��������� � ����.~ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~���!? ���, ��� ���, ��� � ���� ����... � ������ ������ ���� � �����!~
  IF ~~ THEN DO ~GiveGoldForce(92)IncrementGlobal("EvilNW1","GLOBAL",1)EscapeAreaDestroy(50)~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~������? � �� �����, ������� �� ��������. ��� ����� ����� � �������� ����� � ����. � ������ ����������, ��� �����.~
  IF ~~ THEN DO ~SetGlobal("Follow","LOCALS",1)SetGlobal("JohnsthDead","MYAREA",2)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~������� ��� ���, � ��� � ������...~
  IF ~~ THEN DO ~EscapeAreaDestroy(50)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY ~��������� �� ������. ���-�� ������, ��� �� ��������� ��� ������� �����������... ��� ��� �� ��������.~
  IF ~~ THEN REPLY ~������� �����������, ��?~ GOTO 8
  IF ~~ THEN REPLY ~����� ����� ������������ ����������, ����� �������� ���?~ GOTO 6
  IF ~~ THEN REPLY ~��� �� ������ �� ���� ������?~ GOTO 7
  IF ~~ THEN REPLY ~�� ��������� �� ��� �� ����� �� ������?~ GOTO 3
  IF ~~ THEN REPLY ~��� ����� ����. ��������� � ����.~ GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY ~��� � � ���� ����������? �����, ��� � ��� ����� ������. ������� ����� ����� ��� ������ �������� ���� ���.~
  IF ~~ THEN REPLY ~��� ����� �� ���?~ GOTO 5
  IF ~~ THEN REPLY ~��� �� ������ �� ���� ������?~ GOTO 7
  IF ~~ THEN REPLY ~�� ��������� �� ��� �� ����� �� ������?~ GOTO 3
  IF ~~ THEN REPLY ~��� ����� ����. ��������� � ����.~ GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY ~������� ������� - ������� �����������. �� ������ ���� � ������... �� ������� ����, ������ ������. �������, ��� ��� �� ��������� �����������.~
  IF ~~ THEN REPLY ~������� �����������, ��?~ GOTO 8
  IF ~~ THEN REPLY ~��� ����� �� ���?~ GOTO 5
  IF ~~ THEN REPLY ~����� ����� ������������ ����������, ����� �������� ���?~ GOTO 6
  IF ~~ THEN REPLY ~�� ��������� �� ��� �� ����� �� ������?~ GOTO 3
  IF ~~ THEN REPLY ~��� ����� ����. ��������� � ����.~ GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 5.1
  SAY ~�� ������� �������, �������! ������ ���� �� ����������� � �������� � ���� ���������, ����� ��-�������� ������� � �������... ��� ���� ���������� ���� � �������...~
  IF ~~ THEN REPLY ~�������? ��� �� �������?~ GOTO 9
  IF ~~ THEN REPLY ~����� ����� ������������ ����������, ����� �������� ���?~ GOTO 6
  IF ~~ THEN REPLY ~��� �� ������ �� ���� ������?~ GOTO 7
  IF ~~ THEN REPLY ~�� ��������� �� ��� �� ����� �� ������?~ GOTO 3
  IF ~~ THEN REPLY ~��� ����� ����. ��������� � ����.~ GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY ~��-�� ������ ������ ���� ��������� ����� ������� �������� �� �����. ����� ��������� ��, ������� ������ ������� ����� ������� � �� ���������, ����� ��� ����� ���������� ��� ���� ����.~
  IF ~~ THEN REPLY ~��� ��� ������?~ GOTO 10
  IF ~~ THEN REPLY ~����� ����� ������������ ����������, ����� �������� ���?~ GOTO 6
  IF ~~ THEN REPLY ~��� �� ������ �� ���� ������?~ GOTO 7
  IF ~~ THEN REPLY ~�� ��������� �� ��� �� ����� �� ������?~ GOTO 3
  IF ~~ THEN REPLY ~��� ����� ����. ��������� � ����.~ GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY ~���������? ��� �� ������� ����� �����������. ��� � ��� �������, ��� �� ����� ������ ������ ������ � ������� �� ���� �����, ����� � �����. �����, �� �� ����� ��������� ��, ���������, ��� �� � �������. ���� ��� � ������, �� ��������� ��� �������� ���� ��� �������� �� �������.~
  IF ~~ THEN REPLY ~����� ����� ������������ ����������, ����� �������� ���?~ GOTO 6
  IF ~~ THEN REPLY ~��� �� ������ �� ���� ������?~ GOTO 7
  IF ~~ THEN REPLY ~�� ��������� �� ��� �� ����� �� ������?~ GOTO 3
  IF ~~ THEN REPLY ~��� ����� ����. ��������� � ����.~ GOTO 4
END

// ----------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Follow","LOCALS",1)~ THEN BEGIN 11 // from:
  SAY ~���, ���-�� �� ���? ��� ����� ��������� �� ���� ����������� � ���������� � ��������� ������.~
  IF ~~ THEN REPLY ~���, ����� �� ����.~ DO ~SetGlobal("Pause","LOCALS",0)~ EXIT
  IF ~~ THEN REPLY ~��������� ����� �������.~ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.2
  SAY ~���� �� �������� ���� �����, ����������, �� ������������...~
  IF ~~ THEN DO ~SetGlobal("Pause","LOCALS",1)~ EXIT
END

// ----------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Follow","LOCALS",2)~ THEN BEGIN 13 // from:
  SAY ~��� � ����� ������! �������� ������� ��� �� ������, ���� ���.~
  IF ~~ THEN DO ~SetGlobal("JohnsQuest","MYAREA",1)SetGlobal("Follow","LOCALS",3)AddexperienceParty(12000)~ EXIT
END

// ----------------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Follow","LOCALS",3)GlobalLT("SedosQuest","GLOBAL",3)Global("PeninsulaDone","GLOBAL",0)~ THEN BEGIN 14 // from:
  SAY ~�������� ������� ��� �� ������, ���� ���.~
  IF ~~ THEN EXIT
END

// ----------------------------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)GlobalGT("SedosQuest","GLOBAL",2)GlobalGT("PeninsulaDone","GLOBAL",0)~ THEN BEGIN 15 // from:
  SAY ~�� ����������� ����� ��������� �����������! ��� ������ � �����, ����� ����, ��� ���� � ������ ��� ��������!~
  IF ~~ THEN EXIT
END

// ----------------------------------------------------------------------

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  Global("JohnsthDead","MYAREA",0)GlobalLT("SedosQuest","GLOBAL",3)Global("PeninsulaDone","GLOBAL",0)~ THEN BEGIN 16 // from:
  SAY ~�� ������! ������� ����� ���� �����!~
  IF ~~ THEN EXIT
END

