// ������ �������� � ������, 1-� ������� ������ ������ �������� ���� �������� ����� ��� ���� ���� ������ ��������. �� �������� ���, ������ ���������� ����� ��� ����������� �������� ����� ��������� � �������.

BEGIN ~BARAMS01~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,1)Dead("Baram")~ THEN BEGIN 0 // from:
  SAY ~�������� �� ����, ��� ����� �����. ��� �� ����� ���� �������... ��, ������ ����, ��������, ��� ��� ���-��...~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,1)!Dead("Baram")GlobalGT("BaramQuest","GLOBAL",0)~ THEN BEGIN 1 // from:
  SAY ~�� �� ������ ������, ��? ������... �����, ��� ��� ������� �������� ����� �����, ��� �� ��� �� ������� ������ �������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,1)!Dead("Baram")GlobalGT("KurtQuest","GLOBAL",0)~ THEN BEGIN 2 // from:
  SAY ~�� �����. �� �������� ������ ����, ����� ��� ����� �� �����.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,1)!Dead("Baram")Global("KurtQuest","GLOBAL",0)Global("BaramQuest","GLOBAL",0)~ THEN BEGIN 3 // from:
  SAY ~����� � ����� � �����-������ ��������. �������� ���������, ���� ��� ��������� �� ��������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,2)Dead("Baram")~ THEN BEGIN 4 // from:
  SAY ~����� ������ �� ���������� �����������. �������, ����� � ��� ����� ����� ��������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,2)!Dead("Baram")GlobalGT("BaramQuest","GLOBAL",0)~ THEN BEGIN 5 // from:
  SAY ~��� ����� ������, ��� ������ �����. � ����� ������, ������� �����.~
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,2)!Dead("Baram")GlobalGT("KurtQuest","GLOBAL",0)~ THEN BEGIN 6 // from:
  SAY ~���, �� �� ����� �����? ����� �����, <MALEFEMALE>.~
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,2)!Dead("Baram")Global("KurtQuest","GLOBAL",0)Global("BaramQuest","GLOBAL",0)~ THEN BEGIN 7 // from:
  SAY ~������� ��� ����� ���������� ������. �������� ������ � �����������... ��� ����� ����� ��� �������������� �����...~
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,3)Dead("Baram")~ THEN BEGIN 8 // from:
  SAY ~����� �� ����. �� �������� ��� �������. ��� ������ �����, �� ���� ������ ��� ��������� ��� ������, �� �� ������ ���������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #9 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,3)!Dead("Baram")GlobalGT("BaramQuest","GLOBAL",0)~ THEN BEGIN 9 // from:
  SAY ~��� ��������, ��� ���� ������ �� ������ Au���. ��� ������ �������� ��� �������, � �������� �� �������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #10 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,3)!Dead("Baram")GlobalGT("KurtQuest","GLOBAL",0)~ THEN BEGIN 10 // from:
  SAY ~��� ����� ������. �����, ��� ������ ���������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #11 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,3)!Dead("Baram")Global("KurtQuest","GLOBAL",0)Global("BaramQuest","GLOBAL",0)~ THEN BEGIN 11 // from:
  SAY ~����� �������, ������� ���� � �������... ����� �� �� ��� ������� �������� ���� "�������� ���", �������� �� ��, ��� ��� �������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #12 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,4)Dead("Baram")~ THEN BEGIN 12 // from:
  SAY ~������� ������ �����. ���� ���������, ��� ���� ��� ������ �� ����� �����. ��� ������ ���������...~
  IF ~~ THEN EXIT
END

IF WEIGHT #13 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,4)!Dead("Baram")GlobalGT("BaramQuest","GLOBAL",0)~ THEN BEGIN 13 // from:
  SAY ~������ ������� ������ ������� �������� ������. ���� ����������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #14 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,4)!Dead("Baram")GlobalGT("KurtQuest","GLOBAL",0)~ THEN BEGIN 14 // from:
  SAY ~������ ����� ������ ���� �������� ����...~
  IF ~~ THEN EXIT
END

IF WEIGHT #15 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,4)!Dead("Baram")Global("KurtQuest","GLOBAL",0)Global("BaramQuest","GLOBAL",0)~ THEN BEGIN 15 // from:
  SAY ~��! ������ �� ����... � ��� ������������ �� ������ ��������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #16 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,5)~ THEN BEGIN 16 // from:
  SAY ~���� � ��� "�������� ����" ��������� � �������� ������... � ���� ��� �� ������, ��� ��� � ���������.~
  IF ~~ THEN EXIT
END

