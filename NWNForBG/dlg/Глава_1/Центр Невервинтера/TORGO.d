// ����� ������������   ����� ������� �����  ����� - ������   ��� ���� �� �������������� � ������������ ��������� �������������� ���������. �� ��������� ������, ����� ������� �������� � ����� ��������.

BEGIN ~TORGO~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  True()~ THEN BEGIN 0 // from:
  SAY ~��� ���� �����?~
  IF ~  Global("MoonstoneMask","GLOBAL",2)~ THEN REPLY ~��� ����� �������.~ GOTO 1
  IF ~  GlobalLT("MoonstoneMask","GLOBAL",2)~ THEN REPLY ~��� ����� �������.~ GOTO 2
  IF ~~ THEN REPLY ~� ���� ��������� �� ��� �����������.~ DO ~StartStore("Torgo",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~�� ��������.~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~������� ����� 200 �������. ��������� ���������� �� ����� ���� ��������, �������� ������ ���������.~
  IF ~  PartyGoldGT(199)~ THEN REPLY ~��� 200 �������.~ GOTO 3
  IF ~~ THEN REPLY ~��� ������� ������� �����, � ���� ��� ������� �����,~ GOTO 4
  IF ~~ THEN REPLY ~� ���� ��������� �� ��� �����������.~ DO ~StartStore("Torgo",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~�� ��������.~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~������� ����� 200 �������. �� ������ ��� ����� ���������� � ������ � �������� ����������.~
  IF ~~ THEN REPLY ~� ���� ��������� �� ��� �����������.~ DO ~StartStore("Torgo",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~�� ��������.~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~������, ��� ��� �������. ����� ����������� ������, ������� ��� ����-������ �� ������������, �� ���� �����.~
  IF ~~ THEN DO ~TakePartyGold(200)GiveItemCreate("Oppermit",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~��� �, �������� � ������� ����� ����� ������ �����������, ����� �� ������ ���� ��� ���������. ��� ����� ���� �����.~
  IF ~~ THEN REPLY ~� ���� ��������� �� ��� �����������.~ DO ~StartStore("Torgo",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~�� ��������.~ EXIT
END

