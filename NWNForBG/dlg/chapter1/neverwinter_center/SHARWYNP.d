BEGIN ~SHARWYNP~

IF WEIGHT #0 /* Triggers after states #: 35 even though they appear after this state */
~HappinessLT(Myself,-299)~ THEN BEGIN 5 // from:
  SAY ~���... ��� �������, �� ����� �� ���������� ������ ������ ����, � � ����������, ��� ����� ����� � �����, ���� �� ���������. �... �� �����, ��� �� ����� ��������.~ [Sharbye]
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

// -----------------------------------

IF WEIGHT #1 /* Triggers after states #: 35 even though they appear after this state */
~Global("KickedOut","LOCALS",0)Global("SharwynEscape","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~�� ��� �������? ��. � �� ����� �������� ���, ��� �� ��� �� ���������, ���� ��� ������������� ��, ��� ���� �����.~ [Sharbye]
  IF ~~ THEN REPLY ~��. ���.~ GOTO 1
  IF ~~ THEN REPLY ~���. ��������.~ GOTO 200
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~��� ��, ����� ������. ��� �� ����� �����������, ���� �� �����������?~
  IF ~  Global("NWNChapter","GLOBAL",1)~ THEN REPLY ~����������� �� ������� �����.~ DO ~SetGlobal("KickedOut","LOCALS",1)
MoveGlobal("NW1012","Sharwyn",[1141.652])~ EXIT
  IF ~  Global("NWNChapter","GLOBAL",2)~ THEN REPLY ~� ����� ���� � �������� ��������.~ DO ~SetGlobal("KickedOut","LOCALS",1)
MoveGlobal("NW2020","Sharwyn",[945.348])~ EXIT
  IF ~  !Global("NWNChapter","GLOBAL",2)~ THEN REPLY ~��� ���� �����.~ DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
  IF ~  Global("NWNChapter","GLOBAL",2)~ THEN REPLY ~��� ���� �����.~ DO ~SetGlobal("KickedOut","LOCALS",1)SetGlobal("SharwynOut","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 200 // from: 0.2
  SAY ~��� ������.~
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0)JoinParty()~ EXIT
END

// -----------------------------------

IF WEIGHT #2 /* Triggers after states #: 35 even though they appear after this state */
~Global("KickedOut","LOCALS",1)Global("SharwynEscape","GLOBAL",0)~ THEN BEGIN 2 // from:
  SAY ~� �����������, ��� �� ����� ����� ���������. � ����, ��� ��������� �����. �� ��� ��... ����� �������������?~ [SHARWY60]
  IF ~~ THEN REPLY ~��.~ GOTO 3
  IF ~~ THEN REPLY ~���.~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY ~������. ������.~
  IF ~~ THEN DO ~SetGlobal("SharwynOut","GLOBAL",0)SetGlobal("KickedOut","LOCALS",0)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY ~���� �����������, � ���� �����.~
  IF ~~ THEN EXIT
END

// --------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",0)AreaCheck("NW2020")!InParty(Myself)Global("SharwynReleased","GLOBAL",1)~ THEN BEGIN 29 // from:
  SAY ~����, �� ����� �����������, <CHARNAME>. ��� �������, ��� ������ ������ ���, ����� ����� �������������� ������... �� ���� �������, ��� ��������. �� ���� ��� ����������� ���������� ���������, �� ��� ��?~ [SHARWY53]
  IF ~~ THEN REPLY ~������� ������� ���� ����� ������, ������.~ GOTO 30
  IF ~~ THEN REPLY ~����� ��? �� ���, ������� �� ����?~ GOTO 31
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 32
END

IF ~~ THEN BEGIN 30 // from: 29.1
  SAY ~� ��� ������ ��? ���� ������, ��� �� �� ������� �� �������� � ������������, � ������ ��������� � ����� �������? ���� �� ��� �� ��������, � ��� ��� ����������� �������� � ������ ��������� �����������. ���� ������ ������� �� ��� �� ������� �����, ����� ������ ���� �� ���� ����� ������... ��� �� ��� � ����, � �������.~
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 31 // from: 29.2
  SAY ~����� ��� ������ ������ ������. ��� ��, � ���� ���� ������, ��������� ���... � � ���� ���� ���� ������� �� ��, ����� ���� �����.~
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 32 // from: 29.3
  SAY ~���� � ��� �����������, �� ������, ��� ���� ������.~
  IF ~~ THEN DO ~SetGlobal("Nw2020Talked","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 30 31
  SAY ~��� �������, ��� ���� ����� ���� �� ���, ����� ����� ���� �����. ����� � ������������ ���� ������ �����, � ���, ���������, ������� � ����-����, ����� �� �������������� � ��� � ����� ������. ������� �� ���.~
  IF ~~ THEN REPLY ~��� ������ � ���� �������� �� ������?~ GOTO 34
  IF ~~ THEN REPLY ~������� ����� ������ ������ ����?~ GOTO 34
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 32
END

IF ~~ THEN BEGIN 34 // from: 33.1 33.2
  SAY ~������-�� ��� ��������� ����������� ����� �� ��� ������ ����� ������. ��� ��� ���� ����������� ���������� �����, ��-�����... �������� �� ��, ��� ��� ���� ��������� ������ ���������� ������ ���� � ������. ����... ���� ����� ��� ������?~
  IF ~~ THEN REPLY ~� ���� ���� �����-������ �������� � ������, ������� ����� �� ������ �������?~ GOTO 35
  IF ~~ THEN REPLY ~��� �� ���������� ��������.~ GOTO 36
  IF ~~ THEN REPLY ~������ ��� ������ �� �����.~ GOTO 32
END

IF ~~ THEN BEGIN 35 // from: 34.1
  SAY ~����� ����� ���� ����������� ��� ������. �����, ��� ����� ���������� ����� ������ �� ����������� �����, ����� ��� ������ �� ������. � �� ��� ������� � ��������, ����������� ������ �� ������ � ������.~
  IF ~~ THEN REPLY ~�������?~ GOTO 37
  IF ~~ THEN REPLY ~��� �� ���������� ��������.~ GOTO 36
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 32
END

IF ~~ THEN BEGIN 36 // from: 34.2
  SAY ~������������� ������. � � ����� ������������, <CHARNAME>.~
  IF ~~ THEN DO ~SetGlobal("SharwynEscape","GLOBAL",0)SetGlobal("SharwynReleased","GLOBAL",2)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 35.1
  SAY ~� �������� ������� � ����. ������ �������, ��� ��������� ����, ��� ����� �������. � ����� ������, � ��� ��� ��� ������ � ������� ���� � ���� ����, ���������� ��������� ����� �������� ���������� �������... �� ��� ������� ��������� ����� �������������, ��� ������.~
  IF ~~ THEN REPLY ~��� �� ���������� ��������.~ GOTO 36
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 32
END

// --------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",1)AreaCheck("NW2020")!InParty(Myself)Global("SharwynReleased","GLOBAL",1)~ THEN BEGIN 38 // from:
  SAY ~��� ��� ������������, <CHARNAME>. �������, �� ������� ����? ����, ������? ���� �������� ������ ������ � �����, ���� ������ �� ��������� �� ����... ����� �� � ���� ���� ������ ���� �����, ����������� �����.~ [SHARWY55]
  IF ~~ THEN REPLY ~��� �� ��������� �� ������?~ GOTO 39
  IF ~~ THEN REPLY ~�� ���� �� �����-������ ������ � ������ � ��� ���, ��� �� �����?~ GOTO 35
  IF ~~ THEN REPLY ~���� ���� ��� ����� �����, �� ���� ����� �� ��� ������?~ GOTO 40
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 32
END

IF ~~ THEN BEGIN 39 // from: 38.1
  SAY ~����������. ���� ����� ���������� �� ����� �����, ����� ����� �����. ������ � ������������ ��� �������� ��������. ���� � ��������� ��������� ��������� � ��� ���� �� ������, ��� ���� ��������� ����������. � ��������� ������� ������ ������ �������� �����.~
  IF ~~ THEN REPLY ~�� ���� �� �����-������ ������ � ������ � ��� ���, ��� �� �����?~ GOTO 35
  IF ~~ THEN REPLY ~���� ���� ��� ����� �����, �� ���� ����� �� ��� ������?~ GOTO 40
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 32
END

IF ~~ THEN BEGIN 40 // from: 38.3
  SAY ~��, �����, � ������ ����� �����... � ����� ����, ��� ��������� �������� ��� � ������, � ������ ���������� ���� �� ����... ��, ���? �������� ������� ���, �������� ���� � �����, <CHARNAME>? ��� ���� ����������, ��� ������ ������������� ���.~
  IF ~~ THEN REPLY ~������ ���� ��� ��� �� ��������. �� �������.~ GOTO 41
  IF ~~ THEN REPLY ~������, �� ���� ��� �� ����������. �� ��������.~ GOTO 32
END

IF ~~ THEN BEGIN 41 // from: 40.1
  SAY ~�������. ����� � � ����� ������������. � �������� �� ����, ���� �� ������ ��������� �� ���, <CHARNAME>.~
  IF ~~ THEN DO ~SetGlobal("SharwynEscape","GLOBAL",0)SetGlobal("SharwynReleased","GLOBAL",2)JoinParty()~ EXIT
END

