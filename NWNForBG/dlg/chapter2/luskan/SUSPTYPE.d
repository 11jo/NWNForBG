// ������ Suspicious type �������������� ���- ���-�������� �� �����   ���� �������������� ���������� � ������������ ������ ��������� �� ������, ���������� �� �����.

BEGIN ~SUSPTYPE~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Class(LastTalkedToBy,THIEF_ALL)~ THEN BEGIN 0 // from:
  SAY ~�� ���� �� ����� �� ������, ������ ��� � ���� ����.~
  IF ~~ THEN REPLY ~� ��� �� �����?~ GOTO 1
  IF ~~ THEN REPLY ~� ������ ��� ������������.~ GOTO 2
  IF ~~ THEN REPLY ~����� �� �� ���� ���������?~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~� ��� ��� ����� ������, ����� ���� �����! ���� � ���� �����, ������� ���� ������ ����� ��������.~
  IF ~~ THEN REPLY ~� ��������, ��� �� ������ ��� ����������.~ GOTO 3
  IF ~~ THEN REPLY ~��� �� �������� ������ ��� ��������� ��������.~ GOTO 4
  IF ~~ THEN REPLY ~���, �������.~ GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~��, ��������, <SIRMAAM>. �������� �����. �� ���� ��������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY ~��� �� ��� ����, � ����, � ���� � ������.~
  IF ~~ THEN DO ~StartStore("SUSPTYPE",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY ~��, �����, ��� ����.~
  IF ~~ THEN REPLY ~��� ����� ����������?~ GOTO 6
  IF ~~ THEN REPLY ~��� ����� ����������������.~ GOTO 7
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY ~���� �� �� ������������, �� ���� ����� ����, � ������� ��������. � �� � ���� ����������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY ~�� ��������-�� ����� ��� ��� �������, ������� -- �� ������. ����� ��� ���� ��� ������ �� ���, � � ����� ������, ��� ������, ��� � ������-�� ������� ����.~
  IF ~~ THEN REPLY ~��� �� ������ � ����?~ GOTO 8
  IF ~~ THEN REPLY ~��� ����� ����������������.~ GOTO 7
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 4.2
  SAY ~� ����, �� ������ ����� ��� �� �����, ��� ���? � ���� ��� ������� ��� ������ ���������, �� ��� ���, ������ �� ����� ����������, ��� ���?~
  IF ~~ THEN REPLY ~� ��������, ��� �� ������ ��� ����������.~ GOTO 3
  IF ~~ THEN REPLY ~��� ����� ����������?~ GOTO 6
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY ~�������� ������ �������� �������� ����� ���������, � ���� ���� ���� ��� �������. � ����� �������� ������, � ����� ���� �� �������, ���-��, ������ ��� ��� ����� ���� �����.~
  IF ~~ THEN REPLY ~� ��������, ��� �� ������ ��� ����������.~ GOTO 3
  IF ~~ THEN REPLY ~������� ������� ��� ��� ����������?~ GOTO 9
  IF ~~ THEN REPLY ~��� ����� ����������������.~ GOTO 7
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 5
END

IF ~~ THEN BEGIN 9 // from: 8.2
  SAY ~��������� ������ ����� ��� ����� ���� ��������� ������. � ��� ��� � ���� � ������ �������. ������, � ���� � ������ ������� ����, �� ���, ������ ��������, ��� ���?~
  IF ~~ THEN REPLY ~� ��������, ��� �� ������ ��� ����������.~ GOTO 3
  IF ~~ THEN REPLY ~��� ����� ����������������.~ GOTO 7
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 5
END

// -----------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !Class(LastTalkedToBy,THIEF_ALL)~ THEN BEGIN 10 // from:
  SAY ~� �� ������-�� ��� ������ � ����� �� �������������. ��� �������� �����, ������� ������� � ����� ���� ������� ������.~
  IF ~~ THEN EXIT
END

