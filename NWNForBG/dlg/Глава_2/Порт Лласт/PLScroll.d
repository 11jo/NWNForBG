// ����-����� �������� �������� ������� ���

BEGIN ~PLSCROLL~

IF ~  OR(2)Class(LastTalkedToBy,MAGE_ALL)Class(LastTalkedToBy,SORCERER)~ THEN BEGIN 0 // from:
  SAY ~�, �� �� ���. ��� ������� ��������� ����� � ����-������ ����� ������������� ����������. � ���� ��� ��� ���� ������ �� �������, �� ������� �� ���������?~
  IF ~~ THEN REPLY ~��, �������� ��� � ��� ����.~ DO ~StartStore("PLScroll",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~���, �� ������, �������� �����.~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~��, ��� ����. �� �������� ���, � ���� ����� ���.~
  IF ~~ THEN EXIT
END

IF ~  !Class(LastTalkedToBy,MAGE_ALL)!Class(LastTalkedToBy,SORCERER)~ THEN BEGIN 2 // from:
  SAY ~������ ����. ���� �� ����� ��� ����? � ���� ���� ���-����� ������ �� �������, �� ������� �� ���������?~
  IF ~~ THEN REPLY ~��, �������� ��� � ��� ����.~ DO ~StartStore("PLScroll",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~���, �� ������, �������� �����.~ GOTO 1
END

