// ����-����� ������� �������� ������ ������� ���

BEGIN ~BARAX~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("TalkNum","LOCALS",0)IsGabber(Player1)~ THEN BEGIN 0 // from:
  SAY ~����������� ���, <CHARNAME>, ����� ������������! � ������, ������ ������ ������������, � ���� � ������� ��������� �� ��� ��������, ��� ������� ��� � ����!~
  IF ~~ THEN REPLY ~������ �� ������ ��� ���?~ DO ~SetGlobal("TalkNum","LOCALS",1)~ GOTO 1
  IF ~~ THEN REPLY ~��������� �� ����?~ DO ~SetGlobal("TalkNum","LOCALS",1)~ GOTO 2
  IF ~~ THEN REPLY ~� �� ���� �������� ������.~ DO ~SetGlobal("TalkNum","LOCALS",1)~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~������ � ������������ ����� ���� ���. �� �� ��� �����, ��� ������ ��� �� ����, � � ����������, �� ������� ����� �� ������ � � ������� ��� ��������, ��� �������� �� �� ���.~
  IF ~~ THEN REPLY ~���� �� ����?~ GOTO 2
  IF ~~ THEN REPLY ~� �� ���� �������� ������.~ GOTO 3

END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~�����, �������! ��� ������������ �����������, ��� ��������� �� ����������� ����, ������� ������� ��������. ����� ����� ���  - ��� ��� ��, ��� ��� �����, ����� ����� ��.~
  IF ~~ THEN REPLY ~� c����� ���, ��� ����.~ GOTO 4
  IF ~~ THEN REPLY ~������ ����� ������ ���� �� ����������.~ GOTO 5
  IF ~~ THEN REPLY ~� �� ���� �������� ������.~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~�� ���� �������� � ��� �����. � ������, �� ������ ���������� � ������. �� ������ �������� �� ��� ���� ����� ��������, � ����� ������. ����� � �������!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY ~������, ����� ����� ����� ��� ����������. ����� �������� ����� ���� �����, � ���� ����� ����� ����, ��� ����� ���� �������� ���� ������. �������� �� �� �� ���� ���, <CHARNAME>!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY ~���?! �� ��� ������� ��������� �� ��� ����� ����, ��� ����� ������������ ��������� ��������! � ��� ���� ���� ����� ��, � �� ��������, ��� ��� �����?!~
  IF ~~ THEN REPLY ~��� �� ���� ����, ������. �� ��������.~ GOTO 6
  IF ~~ THEN REPLY ~�� ����. �� ������ ��������� ��. � ������ ���, ��� � ���� �����.~ GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY ~��� ������ ������ ��� �������. �-�� �����, ��� �� - �����.~
  IF ~~ THEN DO ~SetGlobal("PlayerBad","LOCALS",1)~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("PlayerBad","LOCALS",1)Global("CultInLuskan","GLOBAL",0)~ THEN BEGIN 7 // from:
  SAY ~�������� ����, <MALEFEMALE>. � �� ����� ������������� � ����, ���� ����������� ��������� ��������, ��������� �����.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("CultInLuskan","GLOBAL",0)IsGabber(Player1)~ THEN BEGIN 8 // from:
  SAY ~�����������, <CHARNAME>. �������, �� ����� ������� ���� �����. ��� ������ ���� ��������!~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("CultInLuskan","GLOBAL",1)IsGabber(Player1)~ THEN BEGIN 9 // from:
  SAY ~� ������, ��� ������� ��������� ����� � �������. �������� �� �� �� ���� ���, <CHARNAME>!~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("CultInLuskan","GLOBAL",0)!IsGabber(Player1)~ THEN BEGIN 10 // from:
  SAY ~�����������. �������, �� ����� ������� ���� �����. ��� ������ ���� ��������!~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  Global("CultInLuskan","GLOBAL",1)!IsGabber(Player1)~ THEN BEGIN 11 // from:
  SAY ~� ������, ��� ������� ��������� ����� � �������. �������� �� �� �� ���� ���!~
  IF ~~ THEN EXIT
END
