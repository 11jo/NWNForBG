BEGIN ~TOMIP~

IF WEIGHT #0 /* Triggers after states #: 35 even though they appear after this state */
~HappinessLT(Myself,-299)~ THEN BEGIN 5 // from:
  SAY ~���� �������� ���� �������������! ����� �� ����� ����������, � �� ��������� ������ ������ � ������!~ [Tomitant]
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

// -----------------------------------

IF WEIGHT #1 /* Triggers after states #: 35 even though they appear after this state */
~Global("KickedOut","LOCALS",0)Global("TomiEscape","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~��-���? �� ��, ������ ����? ����� ������� ����� ������ ��������?~ [Tomidyin]
  IF ~~ THEN REPLY ~��. ���.~ GOTO 1
  IF ~~ THEN REPLY ~���. ��������.~ GOTO 200
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~�, �����, �����. � ���-������ ��� ���������� ������, ����� �� �����������.~
  IF ~  Global("NWNChapter","GLOBAL",1)~ THEN REPLY ~����������� �� ������� �����.~ DO ~SetGlobal("KickedOut","LOCALS",1)
MoveGlobal("NW1012","Tomi",[1086.582])~ EXIT
  IF ~  Global("NWNChapter","GLOBAL",2)~ THEN REPLY ~� ����� ���� � �������� ��������.~ DO ~SetGlobal("KickedOut","LOCALS",1)
MoveGlobal("NW2020","Tomi",[275.477])~ EXIT
  IF ~  !Global("NWNChapter","GLOBAL",2)~ THEN REPLY ~��� ���� �����.~ DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
  IF ~  Global("NWNChapter","GLOBAL",2)~ THEN REPLY ~��� ���� �����.~ DO ~SetGlobal("KickedOut","LOCALS",1)SetGlobal("TomiOut","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 200 // from: 0.2
  SAY ~��� ����. ����� � ������������!~
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0)JoinParty()~ EXIT
END

// -----------------------------------

IF WEIGHT #2 /* Triggers after states #: 35 even though they appear after this state */
~Global("KickedOut","LOCALS",1)Global("TomiEscape","GLOBAL",0)~ THEN BEGIN 2 // from:
  SAY ~� ��� � �����, ��� ��� � ����� ������ ���������� ���� � ���� �������, <LADYLORD>. �� ������ �� ����� ����������� ������?~ [TOMI060]
  IF ~~ THEN REPLY ~��.~ GOTO 3
  IF ~~ THEN REPLY ~���.~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY ~���� ���!~
  IF ~~ THEN DO ~SetGlobal("TomiOut","GLOBAL",0)SetGlobal("KickedOut","LOCALS",0)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY ~��� �, �� ������, ��� ���� ������.~
  IF ~~ THEN EXIT
END

// --------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",0)AreaCheck("NW2020")!InParty(Myself)Global("TomiReleased","GLOBAL",1)~ THEN BEGIN 33 // from:
  SAY ~��� �, �� ��� �� <CHARNAME>! ��� � ��� �'� ������! �� ������ ��, �������� ��������� ������������� � ��� ����� ����? ������� �����, ��� ����� �� ���� ����... �-�-�... �������� � ����������. ������ ��.~ [TOMI053]
  IF ~~ THEN REPLY ~����� ������� ������ ���� �����, ����.~ GOTO 34
  IF ~~ THEN REPLY ~����� ��? �� ���, ����������� ����?~ GOTO 35
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 36
END

IF ~~ THEN BEGIN 34 // from: 33.1
  SAY ~���, �� � ���� �� ������ �� �����������? ���� ������, ���� � �. ����� ����, ��� ���� ���� ���������, ������� ������ ��� ������� �� ��� � �������� ���� ����� �� ��, ����� � ���������� �� ��� �� �������������� ��������. �� ��� ������ �������� � ��������. ������, ���� ����� ����� ������� ���� ���� ���������, ��� �������� �����. ��� � �������, ��-�����! ������-���� ����� �������������� ����, ��� �� ���� �������� ���� ������� �� �������������, ������?~
  IF ~~ THEN REPLY ~��� ������ � ���� �������� �� ������?~ GOTO 37
  IF ~~ THEN REPLY ~������� ����� ������ ������ ����?~ GOTO 37
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 38
END

IF ~~ THEN BEGIN 35 // from: 33.2
  SAY ~��... ����� ����, ���� �������. � ����� ������, �� ��� �� ����� �������� ����� �������������, ����� ��� ��������� �� ��� � �������, �����? � ������... ���� ����� � ������������-�� �� ����������. ������, ���� ����� ����� ������� ���� ���� ���������, ��� �������� �����. ��� � �������, ��-�����! ������-���� ����� �������������� ����, ��� �� ���� �������� ���� ������� �� �������������, ������?~
  IF ~~ THEN REPLY ~��� ������ � ���� �������� �� ������?~ GOTO 37
  IF ~~ THEN REPLY ~������� ����� ������ ������ ����?~ GOTO 37
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 38
END

IF ~~ THEN BEGIN 36 // from: 33.3
  SAY ~���. ��-��!~
  IF ~~ THEN DO ~SetGlobal("Nw2020Talked","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 34.1
  SAY ~��� ��� ��������� ��� ������� ������... �, ������, �������, ������ � ����. ����� ��������, ���� ������ ����� ����-���� ����� ���� �������. ��� ������� ������, ��� � ������ �������� ����, ��� �����. ����� �����, �� � ���� �� ����������� ����������, ������? �, �-�, � �� �����, ��� �� � ����� ���� ����-������ ������, ������?~
  IF ~~ THEN REPLY ~� ���� ���� �����-������ �������� � ������, ������� ����� �� ������ �������?~ GOTO 39
  IF ~~ THEN REPLY ~��� �� �� ������� �������� �������� �����.~ GOTO 40
  IF ~~ THEN REPLY ~������ ��� ������ �� �����.~ GOTO 41
END

IF ~~ THEN BEGIN 38 // from: 34.3
  SAY ~��������! ���� ���� ����������� �������� - � ��� ������ � �������... �� ������� ������ ��������.~
  IF ~~ THEN DO ~SetGlobal("Nw2020Talked","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 37.1
  SAY ~��, ���� ������, ��� ������ �� �� �����. ���� ������ ����, ��� ������ - ����� �� �����.~
  IF ~~ THEN REPLY ~������?~ GOTO 42
  IF ~~ THEN REPLY ~��� �� �� ������� �������� �������� �����.~ GOTO 40
  IF ~~ THEN REPLY ~������ ��� ������ �� �����.~ GOTO 41
END

IF ~~ THEN BEGIN 40 // from: 37.2
  SAY ~�� ����� �� ������� ����������, ��� � ��� ��� ������� ��������? ���������... ���� ����������� ��������� ��� ����� ��������� ���, ��-������.~
  IF ~~ THEN DO ~SetGlobal("TomiEscape","GLOBAL",0)SetGlobal("Nw2020Talked","LOCALS",1)SetGlobal("TomiReleased","GLOBAL",2)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 37.3
  SAY ~����� �����? ��� ��� ������, <LADYLORD>.~
  IF ~~ THEN DO ~SetGlobal("Nw2020Talked","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 39.1
  SAY ~���, ��... � ���� ������ �������� ����� � �������... �� ��� ���� ������ ����, ���� �� �� ������ � ���������, ����� �'� ������. ��� ��� ��� ���� ���. ��� � ��������� ���������, ��� �� ����� ���? �� �� ����� � ���� ���� ����� �������������� ��� ���...~
  IF ~~ THEN REPLY ~��� �� �� ������� �������� �������� �����.~ GOTO 40
  IF ~~ THEN REPLY ~������ ��� ������ �� �����.~ GOTO 41
END

// --------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",1)AreaCheck("NW2020")!InParty(Myself)Global("TomiReleased","GLOBAL",1)~ THEN BEGIN 43 // from:
  SAY ~�������, <LADYLORD>! ���, ����� ���� �� ������ ��� ���� ����������, �? ��� ������ �� ������� ������... ��� ��� ������ ��������� ������... ���� ��� �������� ����� ������. ������ �� ���� ������, ����� ��� �������� �� ������ �������������� ���������.~ [TOMI055]
  IF ~~ THEN REPLY ~��� �� ��������� �� ������?~ GOTO 44
  IF ~~ THEN REPLY ~�� ���� �� �����-������ ������ � ������ � ��� ���, ��� �� �����?~ GOTO 39
  IF ~~ THEN REPLY ~� ���, ��� � ����������� ����� ������?~ GOTO 45
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 36
END

IF ~~ THEN BEGIN 44 // from: 33.1
  SAY ~������, ���� ����� ����� ������� ���� ���� ���������, ��� �������� �����. ��� � �������, ��-�����! ������-���� ����� �������������� ����, ��� �� ���� �������� ���� ������� �� �������������, ������? � �����, ������� ������ �������� ��� ���� �����, ����� � ������������� � ���� �������. �������� ������, ���� ���.~
  IF ~~ THEN REPLY ~�� ���� �� �����-������ ������ � ������ � ��� ���, ��� �� �����?~ GOTO 39
  IF ~~ THEN REPLY ~� ���, ��� � ����������� ����� ������?~ GOTO 45
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 36
END

IF ~~ THEN BEGIN 45 // from: 33.3
  SAY ~��, ���� �� � ����� �� ��������� � ��������, <LADYLORD>. ����, ��� ������ ������� ������ ���� � �����, ���� � ����-������ �� �����������. � �� �� ����� ����� ����... ���� � ����� ������� ��������, ������ �� ������������. �� � ������� � ���� ���������. � ��� �������� ������������ �����, ����������� ������. �����, ���� � �'� �����, ��� � �������� �������� ���� �������.~
  IF ~~ THEN REPLY ~������ ���� ������ ����������. �� � ����.~ GOTO 46
  IF ~~ THEN REPLY ~������, �� ���� ��� �� ����������. �� ��������.~ GOTO 36
END

IF ~~ THEN BEGIN 46 // from: 45.1
  SAY ~��� � ���������, <LADYLORD>... � ���� ����. ���� �������� ���������� ����� ��� ���������, ������ �������.~
  IF ~~ THEN DO ~SetGlobal("TomiEscape","GLOBAL",0)SetGlobal("Nw2020Talked","LOCALS",1)SetGlobal("TomiReleased","GLOBAL",2)JoinParty()~ EXIT
END

