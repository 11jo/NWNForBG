// ������ �������� � ������, 1-� ������� ������ �� �������� ��� ���� �������� ����� ��� ���� ���� �������� ���. �� �������� ���, ������ ���������� ���������� ��� ����������� �������� ����� ��������� � �������.

BEGIN ~KURTS01~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,1)Dead("Kurt")~ THEN BEGIN 0 // from:
  SAY ~������, ����� ���� ����, ��... ��, � �� ����, ���. ������ � ��� ���� �����, �� ��� ���������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,1)!Dead("Kurt")GlobalGT("KurtQuest","GLOBAL",0)~ THEN BEGIN 1 // from:
  SAY ~�� ���� ������ �����, ��? ��, �����, ��� ���. ������. ���� ���� ������ ���� ������������ ������ ���������, ��� ����������� ��� �������, ������� �� ������ �����������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,1)!Dead("Kurt")GlobalGT("BaramQuest","GLOBAL",0)~ THEN BEGIN 2 // from:
  SAY ~�� ��� ���? �� ����� ������, ���� ��������? ���� ����� ��� ����, �������!~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,1)!Dead("Kurt")Global("KurtQuest","GLOBAL",0)Global("BaramQuest","GLOBAL",0)~ THEN BEGIN 3 // from:
  SAY ~�� ������� ������ � ��� ����� � �����������. ���� ��� �� ������, ��� ��� � ���������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,2)Dead("Kurt")~ THEN BEGIN 4 // from:
  SAY ~�������� ����" �� ����������, ���� ������, ����� ���� �����. ��� ����� ������ ��������... �� � �� ����, ��� ��� ����� ����.~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,2)!Dead("Kurt")GlobalGT("KurtQuest","GLOBAL",0)~ THEN BEGIN 5 // from:
  SAY ~��� ������ ������ �������� �� ��, ��� ������ ���� �����, ����������� ��������!~
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,2)!Dead("Kurt")GlobalGT("BaramQuest","GLOBAL",0)~ THEN BEGIN 6 // from:
  SAY ~������, ��������� ������!~
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,2)!Dead("Kurt")Global("KurtQuest","GLOBAL",0)Global("BaramQuest","GLOBAL",0)~ THEN BEGIN 7 // from:
  SAY ~����� � ����� ����� � �������� ������. �����, ������ ����� ���� � ����� � ������ �����, ��� �������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,3)Dead("Kurt")~ THEN BEGIN 8 // from:
  SAY ~����� ��������! �� �����������, � ���� ������� �������� ������� ���...~
  IF ~~ THEN EXIT
END

IF WEIGHT #9 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,3)!Dead("Kurt")GlobalGT("KurtQuest","GLOBAL",0)~ THEN BEGIN 9 // from:
  SAY ~��. ������ ��������� �� ���� ������ ����� ������. ����� ���� ������ �� ��� ����.~
  IF ~~ THEN EXIT
END

IF WEIGHT #10 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,3)!Dead("Kurt")GlobalGT("BaramQuest","GLOBAL",0)~ THEN BEGIN 10 // from:
  SAY ~�����, �������� ������. �� �� �� ����� �����, � ������, ��� ���� �� ������ �� �������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #11 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,3)!Dead("Kurt")Global("KurtQuest","GLOBAL",0)Global("BaramQuest","GLOBAL",0)~ THEN BEGIN 11 // from:
  SAY ~����� ������ ������ ���� �������� ����...~
  IF ~~ THEN EXIT
END

IF WEIGHT #12 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,4)Dead("Kurt")~ THEN BEGIN 12 // from:
  SAY ~� ��������� ����� ������, �������� �����, � ��������� ��� �� ��� ���������! �� ������� � ������� ��� ��� ��������� �� ����� ������...~
  IF ~~ THEN EXIT
END

IF WEIGHT #12 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,4)!Dead("Kurt")GlobalGT("KurtQuest","GLOBAL",0)~ THEN BEGIN 12 // from:
  SAY ~�� ��� ����� ����... ���� ������� �� ������. �����, ����� �������� � ������������, ������� �������� ��� ����� ������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #13 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,4)!Dead("Kurt")GlobalGT("BaramQuest","GLOBAL",0)~ THEN BEGIN 13 // from:
  SAY ~��� �� ������� ���� �����! �� ����� ��� ���������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #14 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,4)!Dead("Kurt")Global("KurtQuest","GLOBAL",0)Global("BaramQuest","GLOBAL",0)~ THEN BEGIN 14 // from:
  SAY ~��. �� ���, ��-��, ��������?~
  IF ~~ THEN EXIT
END

