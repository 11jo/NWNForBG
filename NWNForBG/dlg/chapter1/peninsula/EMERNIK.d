// ���������� ������ ����������  �������   ����  ����� �����-��������� ��������� �����������, ������� �� �����-�� �������. �������, ��� ��� ��� � ������. �������, �� ��� ����� �������� ����.

BEGIN ~EMERNIK~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)OpenState("DOOR1",TRUE)Global("Talked","LOCALS",0)GlobalLT("SedosQuest","GLOBAL",3)~ THEN BEGIN 0 // from:
  SAY ~�������� �� ���� �����. ����� ���������, � �� ����� � ������������.~
  IF ~~ THEN EXIT
END

// ---------------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)OpenState("DOOR1",TRUE)GlobalLT("SedosQuest","GLOBAL",3)~ THEN BEGIN 1 // from:
  SAY ~���! ������� � ��������, ���� ��� ������� �� �����!~
  IF ~~ THEN DO ~MoveToPointNoInterrupt([3513.352])~ EXIT
END

// ---------------------------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)OpenState("DOOR1",FALSE)Global("Talked","LOCALS",0)GlobalLT("SedosQuest","GLOBAL",3)~ THEN BEGIN 2 // from:
  SAY ~�� �� �� � ������������, ������?~
  IF ~~ THEN REPLY ~���, ��� �������� ��������� � ����, ����� ������� ����.~ GOTO 3
  IF ~~ THEN REPLY ~... ����� �� �����������?~ GOTO 4
  IF ~~ THEN REPLY ~��, � �����������... ����������� � ���� �� �����, �� �� ���������.~ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY ~� ����� ������, ��� �������, ��� �� ������. ��� ���� �� ������ � ������, ������� ���, ����������... � �����, ����� ���� ������ �� ��������.~
  IF ~~ THEN REPLY ~��� ��, � ����� ������?~ GOTO 6
  IF ~~ THEN REPLY ~�� ����� �� �� �������� �� ��������� ��������?~ GOTO 7
  IF ~~ THEN REPLY ~�����, ����� ���������� ������.~ GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY ~�� ����������� - �� ������ �� ��������. ����� ����, �� ���� ��������, ����� ��� ��, ��� � �� ����. �����, ����� ���� �������� ��� �� ��������.~
  IF ~~ THEN REPLY ~��� ��, � ����� ������?~ GOTO 6
  IF ~~ THEN REPLY ~�� ����� �� �� �������� �� ��������� ��������?~ GOTO 7
  IF ~~ THEN REPLY ~�����, ����� ���������� ������.~ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 2.3
  SAY ~��-�? ��� �, ������, ����� �� ������� � ����, � ������� � ����, ��� � � ��������� �����, ������� ��� ������� - ��� ���������.~
  IF ~~ THEN DO ~Enemy()Attack(LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY ~������ ��������. ��� - �������.~
  IF ~~ THEN REPLY ~�� ����� �� �� �������� �� ��������� ��������?~ GOTO 7
  IF ~~ THEN REPLY ~�����, ����� ���������� ������.~ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY ~������ �� � ���. �� ��� � ������������.~
  IF ~~ THEN REPLY ~��� �������� ������� �����������?~ GOTO 9
  IF ~~ THEN REPLY ~��� �� ������ �� ���� ����� ������?~ GOTO 10
  IF ~~ THEN REPLY ~��� �����, ����� �� ��������� �� ����.~ GOTO 11
  IF ~~ THEN REPLY ~������, ��������� �����.~ GOTO 12
END

IF ~~ THEN BEGIN 8 // from: 3.3
  SAY ~��������� ���� ����� ���� ����� ��������. �� ������ ������� �� �� ������, ����������, �� � ���� ���������.~
  IF ~~ THEN REPLY ~��� ��, � ����� ������?~ GOTO 6
  IF ~~ THEN REPLY ~�� ����� �� �� �������� �� ��������� ��������?~ GOTO 7
  IF ~~ THEN REPLY ~��� �����, ����� �� ��������� �� ����.~ GOTO 11
  IF ~~ THEN REPLY ~������, ��������� �����.~ GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY ~������� �����������? �� ����� ���������� ������ ���������� �� ������ ������, � ����� ��� ������� �������.~
  IF ~~ THEN REPLY ~������ �������? � ������� �� ����� �����?~ GOTO 13
  IF ~~ THEN REPLY ~������ ������� ����������� ����� ���?~ GOTO 14
  IF ~~ THEN REPLY ~��� ��� �������?~ GOTO 15
  IF ~~ THEN REPLY ~�����, ������ �������� � ������� �����������.~ GOTO 16
END

IF ~~ THEN BEGIN 10 // from: 7.2
  SAY ~��� ������� ������ - ������������� ���� ����� �������� ������������ � ��������� ������������, ������� �� ������� � ��������...~
  IF ~~ THEN REPLY ~��������? ��� ���?~ GOTO 17
  IF ~~ THEN REPLY ~� ����� ������� ��� ���?~ GOTO 18
  IF ~~ THEN REPLY ~��� ������������ ������ �����������?~ GOTO 19
  IF ~~ THEN REPLY ~��� ����� �������. ��� �������� ����?~ GOTO 20
  IF ~~ THEN REPLY ~��� ���, ��� ��� ����� ����� � ������.~ GOTO 21
END

IF ~~ THEN BEGIN 11 // from: 7.3
  SAY ~� ����� ������������.~
  IF ~~ THEN DO ~SetGlobal("Talked","LOCALS",1)ChangeAIScript("EmFollow",OVERRIDE)~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.2
  SAY ~������. � �������� �� ���� ������.~
  IF ~~ THEN DO ~SetGlobal("Talked","LOCALS",1)ChangeAIScript("",OVERRIDE)~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.1
  SAY ~����� ������. ��� ������� ��������� � ������. ��� ������ � ���������.~
  IF ~~ THEN REPLY ~��������? ��� ���?~ GOTO 17
  IF ~~ THEN REPLY ~������ ������� ����������� ����� ���?~ GOTO 14
  IF ~~ THEN REPLY ~��� ��� �������?~ GOTO 15
  IF ~~ THEN REPLY ~�����, ������ �������� � ������� �����������.~ GOTO 16
END

IF ~~ THEN BEGIN 14 // from: 9.2
  SAY ~�� ��� �������, ��� ������� ���, ��������� � ��� � ������. ��������� �� ����� ������ �������� ������ ������� �����. ���������... ���������.~
  IF ~~ THEN REPLY ~��� �� ������ �� ���� ����� ������?~ GOTO 10
  IF ~~ THEN REPLY ~��� ��� �������?~ GOTO 15
  IF ~~ THEN REPLY ~�����, ������ �������� � ������� �����������.~ GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 9.3
  SAY ~������ ���� �������� ����������� - ������� ������ �����, ���� �� ����� �������������� ����������� � ���������.~
  IF ~~ THEN REPLY ~��������? ��� ���?~ GOTO 17
  IF ~~ THEN REPLY ~������ ������� ����������� ����� ���?~ GOTO 14
  IF ~~ THEN REPLY ~��� �� ������ �� ���� ����� ������?~ GOTO 10
  IF ~~ THEN REPLY ~�����, ������ �������� � ������� �����������.~ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 9.4
  SAY ~�����. ������� ����������� - ��������� ��������. ��� ����� ����������.~
  IF ~~ THEN REPLY ~��� �������� ������� �����������?~ GOTO 9
  IF ~~ THEN REPLY ~��� �� ������ �� ���� ����� ������?~ GOTO 10
  IF ~~ THEN REPLY ~��� �����, ����� �� ��������� �� ����.~ GOTO 11
  IF ~~ THEN REPLY ~������, ��������� �����.~ GOTO 12
END

IF ~~ THEN BEGIN 17 // from: 10.1
  SAY ~��� ��, ���� �� �������������. ��� ����� ��� �����, ����� ���, ������� ��������� ���� �����������. ��� ��� ������ � ��������� - ��� �� ��������...~
  IF ~~ THEN REPLY ~� ����� ������� ��� ���?~ GOTO 18
  IF ~~ THEN REPLY ~��� ������������ ������ �����������?~ GOTO 19
  IF ~~ THEN REPLY ~��� ����� �������. ��� �������� ����?~ GOTO 20
  IF ~~ THEN REPLY ~��� ���, ��� ��� ����� ����� � ������.~ GOTO 21
END

IF ~~ THEN BEGIN 18 // from: 10.2
  SAY ~����� ����� �������, �� ��� ��������� �������. ���� �� ������� � �������� � ��������� ���, �� ������ � ������������.~
  IF ~~ THEN REPLY ~��������? ��� ���?~ GOTO 17
  IF ~~ THEN REPLY ~��� ������������ ������ �����������?~ GOTO 19
  IF ~~ THEN REPLY ~��� ����� �������. ��� �������� ����?~ GOTO 20
  IF ~~ THEN REPLY ~��� ���, ��� ��� ����� ����� � ������.~ GOTO 21
END

IF ~~ THEN BEGIN 19 // from: 10.3
  SAY ~��� ������������������� � ����������� ���������� �������. �������� �������, �� ���������� ����������� - � ���� ����, �� ��� ������ �� ��������...~
  IF ~~ THEN REPLY ~��������? ��� ���?~ GOTO 17
  IF ~~ THEN REPLY ~� ����� ������� ��� ���?~ GOTO 18
  IF ~~ THEN REPLY ~��� ����� �������. ��� �������� ����?~ GOTO 20
  IF ~~ THEN REPLY ~��� ���, ��� ��� ����� ����� � ������.~ GOTO 21
END

IF ~~ THEN BEGIN 20 // from: 10.4
  SAY ~��-�, �� ������� �� �� ������ � �� ���.~
  IF ~~ THEN REPLY ~��������? ��� ���?~ GOTO 17
  IF ~~ THEN REPLY ~� ����� ������� ��� ���?~ GOTO 18
  IF ~~ THEN REPLY ~��� ������������ ������ �����������?~ GOTO 19
  IF ~~ THEN REPLY ~��� ���, ��� ��� ����� ����� � ������.~ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 10.5
  SAY ~������ ������ ���������. ������ ��� ����� - ����������� �������.~
  IF ~~ THEN REPLY ~��� �������� ������� �����������?~ GOTO 9
  IF ~~ THEN REPLY ~��� �� ������ �� ���� ����� ������?~ GOTO 10
  IF ~~ THEN REPLY ~��� �����, ����� �� ��������� �� ����.~ GOTO 11
  IF ~~ THEN REPLY ~������, ��������� �����.~ GOTO 12
END

// ---------------------------------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Talked","LOCALS",1)GlobalLT("SedosQuest","GLOBAL",3)~ THEN BEGIN 22 // from:
  SAY ~�������, �� �������?~
  IF ~~ THEN REPLY ~��� �������� ������� �����������?~ GOTO 9
  IF ~~ THEN REPLY ~��� �� ������ �� ���� ����� ������?~ GOTO 10
  IF ~~ THEN REPLY ~��� �����, ����� �� ��������� �� ����.~ GOTO 11
  IF ~~ THEN REPLY ~������, ��������� �����.~ GOTO 12
END

// ---------------------------------------------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("SedosQuest","GLOBAL",2)~ THEN BEGIN 23 // from:
  SAY ~������, ��� �������� ��������� � �����. � ��������� �������� �����, ����� ������������ �������. ������� �� ������.~
  IF ~~ THEN EXIT
END

