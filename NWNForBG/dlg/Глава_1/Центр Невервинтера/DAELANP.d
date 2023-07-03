BEGIN ~DAELANP~

IF WEIGHT #0 /* Triggers after states #: 35 even though they appear after this state */
~HappinessLT(Myself,-299)~ THEN BEGIN 5 // from:
  SAY ~�� ������� ���� ���������� ���������� ���������. ����� �������, ��� � �����.~
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

// -----------------------------------

IF WEIGHT #1 /* Triggers after states #: 35 even though they appear after this state */
~Global("KickedOut","LOCALS",0)Global("DaelanEscape","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~�� ����� ����� ������? � �� ����� ���� ����������� ������. �� ������������� ����������� ������� ����?~
  IF ~~ THEN REPLY ~��. ���.~ GOTO 1
  IF ~~ THEN REPLY ~���. ��������.~ DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~��� �, ���� ���� �����������, ���� � ������� ���� �� ������, ���� �� ����������� � ����� �������� ����� ���� � �������. ������. ��� �� ����� �����������, ���� �� �����������?~
  IF ~  Global("NWNChapter","GLOBAL",1)~ THEN REPLY ~����������� �� ������� �����.~ DO ~SetGlobal("KickedOut","LOCALS",1)
MoveGlobal("NW1012","Daelan",[806.360])~ EXIT
  IF ~  Global("NWNChapter","GLOBAL",2)~ THEN REPLY ~� ����� ���� � �������� ��������.~ DO ~SetGlobal("KickedOut","LOCALS",1)
MoveGlobal("NW2020","Daelan",[439.313])~ EXIT
  IF ~  !Global("NWNChapter","GLOBAL",2)~ THEN REPLY ~��� ���� �����.~ DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
  IF ~  Global("NWNChapter","GLOBAL",2)~ THEN REPLY ~��� ���� �����.~ DO ~SetGlobal("KickedOut","LOCALS",1)SetGlobal("DaelanOut","GLOBAL",1)~ EXIT
END

// -----------------------------------

IF WEIGHT #2 /* Triggers after states #: 35 even though they appear after this state */
~Global("KickedOut","LOCALS",1)Global("DaelanEscape","GLOBAL",0)~ THEN BEGIN 2 // from:
  SAY ~� ���� ���� - � �����������, ��� �� ���������. ������� �� ��, ����� � ����� ������������� � ����?~ [DAELAN60]
  IF ~~ THEN REPLY ~��.~ GOTO 3
  IF ~~ THEN REPLY ~���.~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY ~��� ������ � ����� ������������.~
  IF ~~ THEN DO ~SetGlobal("DaelanOut","GLOBAL",0)SetGlobal("KickedOut","LOCALS",0)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY ~���� �����������, � ���� �����.~
  IF ~~ THEN EXIT
END

// --------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",0)AreaCheck("NW2020")!InParty(Myself)Global("DaelanReleased","GLOBAL",1)~ THEN BEGIN 22 // from:
  SAY ~<CHARNAME>! ��� � ��� ������ ���� �����, ���� � �� �������, ����� � ����� �� ������. � ������, ��� ������ ������ ����, ����� �������� ������� �����, ����������� ��� ����.~ [DAELAN53]
  IF ~~ THEN REPLY ~����� ������������� ������ ���� �����, ������.~ GOTO 23
  IF ~~ THEN REPLY ~����� ��? �� ���, �������� �� ����, ��� �����-������ ���������� ������������ �������?~ GOTO 24
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 25
END

IF ~~ THEN BEGIN 23 // from: 22.1
  SAY ~� ����, �� ��� ������� ������, <CHARNAME>, ��, ������, ���� ����� �������� ��� ��� ������ ��� ������. ����� ����, ��� ���� ���� ��������� � ������������, � �������� � '��������� ������', ����� ���������� ���� ������ �� �����. ��� �� ��� ���������� ���� ������ �� ��������� ������ ����� ������.~
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 24 // from: 22.2
  SAY ~� ���������� �� ���, ��� ���� �������� ������� ��� ����, <CHARNAME>, �� ����� ���� ���� ����������. �� ����������, ������ ������� ���� ����������� ���� ����.~
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 25 // from: 22.3
  SAY ~��������, <SIRMAAM>. ��� ������ ������ � ����� �������, ���� ��� ����������� ������ ��������� � ����������� �����.~
  IF ~~ THEN DO ~SetGlobal("Nw2020Talked","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.1
  SAY ~������, ���� ����� ������� ���������� �����, ��� ������ ������ ��� ����� ���������. �� �������� ���� ��������� ������������ ��������� � ������ ����-�����, ����� �������������� � �������.~
  IF ~~ THEN REPLY ~��� ������ � ���� �������� �� ������?~ GOTO 27
  IF ~~ THEN REPLY ~������� ����� ������ ������ ����?~ GOTO 27
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 25
END

IF ~~ THEN BEGIN 27 // from: 26.1
  SAY ~����� ������ �������� ���������, ��� ���� ��������� ������ �� ���� ������ - ������ ���������. ���� ����� �� �������� �� ����� �� ����������� ���� ���������. ��� ������ ������ �������� ������, ��� ����� ���������. ����, � ����� � ����, ���� � ���-������ ��� ���� �������?~
  IF ~~ THEN REPLY ~� ���� ���� �����-������ �������� � ������, ������� ����� �� ������ �������?~ GOTO 28
  IF ~~ THEN REPLY ~��� �� �� ������� ������� ����.~ GOTO 29
  IF ~~ THEN REPLY ~������ ��� ������ �� �����.~ GOTO 30
END

IF ~~ THEN BEGIN 28 // from: 27.1
  SAY ~� ������ �� ������ �� ���� ������, ���� ������ ����������� - ��� � � - ��� ������ ������� ������ � ������ ������.~
  IF ~~ THEN REPLY ~������?~ GOTO 31
  IF ~~ THEN REPLY ~��� ��� �� �����?~ GOTO 31
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 25
END

IF ~~ THEN BEGIN 29 // from: 27.2
  SAY ~� ���� �������� ������� ������ ���� ����� �������.~
  IF ~~ THEN DO ~SetGlobal("DaelanReleased","GLOBAL",2)SetGlobal("DaelanEscape","GLOBAL",0)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.3
  SAY ~����� � ������ ����������� � ����. ���� ��� �����-������ ����������� ������ � ���������� ����, ���������� �� ���� ��� ���. ~
  IF ~~ THEN DO ~SetGlobal("Nw2020Talked","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 27.2
  SAY ~���� ����� ����� ��� ������ ������������. ��������� ����� ������, �� ������ �������� ��� ������ ��� ��� ����� � ����� - �����, ��� ��� �����! ���� �� �� �������, ���� �� ����� � ������� ������������ � ���� ������ ���. ���� � ���� ���-������ ������, <CHARNAME>?~
  IF ~~ THEN REPLY ~��� �� �� ������� ������� ����.~ GOTO 29
  IF ~~ THEN REPLY ~������ ��� ������ �� �����.~ GOTO 30
END

// --------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",1)AreaCheck("NW2020")!InParty(Myself)Global("DaelanReleased","GLOBAL",1)~ THEN BEGIN 32 // from:
  SAY ~����������� ��� ���, <SIRMAAM>. ��� �, ������ ������� ����, ���� �� ������������ ������� �������� �����. �������? ��� �� �������� ��������� ������, ��� �������� ���� ���� �� �����������.~ [DAELAN55]
  IF ~~ THEN REPLY ~��� �� ��������� �� ������?~ GOTO 33
  IF ~~ THEN REPLY ~�� ���� �� �����-������ ������ � ������ � ��� ���, ��� �� �����?~ GOTO 28
  IF ~~ THEN REPLY ~���� ���� ��� ����� �����, ���� �� �����, ���� �����?~ GOTO 34
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 30
END

IF ~~ THEN BEGIN 33 // from: 32.1
  SAY ~������, ���� ����� ������� ���������� �����, ��� ������ ������ ��� ����� ���������. �� �������� ���� ��������� ������������ ��������� � ������ ����-�����, ����� �������������� � �������. � ������� �� ��� ��� �����������. � ������� ����� ������ ��-�� ����, � ��� �� �������� ��������� �� �� ������. ������ �����, ��� ��������� ��� ���������, ������ ���������.~
  IF ~~ THEN REPLY ~�� ���� �� �����-������ ������ � ������ � ��� ���, ��� �� �����?~ GOTO 28
  IF ~~ THEN REPLY ~���� ���� ��� ����� �����, ���� �� �����, ���� �����?~ GOTO 34
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 30
END

IF ~~ THEN BEGIN 34 // from: 32.3
  SAY ~���� �� � ������, ���� �� �������� ���� � ��������. ��� ��������� ������� ���� � ������ ������, ���� ����� ������������ ��� ����. ���� ��������� ������ ��������, <CHARNAME>. � �� ����� ������� �����, ��� ��, �� � ������ ���� �� ������� �������� �����. ��� ����� �������� ����� ����������, ������ � ������� � ���. � ��� �� ������ ���� ������ � ������� ����� ������, ���� ���������.~
  IF ~~ THEN REPLY ~������ ���� �� ��������. �������������.~ GOTO 35
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 36
END

IF ~~ THEN BEGIN 35 // from: 34.1
  SAY ~����������, � �������� ����� ����� �����, <CHARNAME>. ��� ���� ����� ��������� ���� ������ �������� �����. � �������� �� ����� � ����� ��������� ���� ������� ��� ����� �����.~
  IF ~~ THEN DO ~SetGlobal("DaelanReleased","GLOBAL",2)SetGlobal("DaelanEscape","GLOBAL",0)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.2
  SAY ~���� ���� ����������� ������� ����, ������� �� ������� ����, ����������� � �������� �� ����. ��� ������ ������������� ����� ������ ���� � �������.~
  IF ~~ THEN DO ~SetGlobal("Nw2020Talked","LOCALS",1)~ EXIT
END



