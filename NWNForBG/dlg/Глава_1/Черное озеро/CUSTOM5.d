// ����������� ���������� ����� �����  ����������� ���������������� ����������, ������� �������� ������������. ���� ��� �������� ����� ������.

BEGIN ~CUSTOM5~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,1)HPPercentLT(LastTalkedToBy(Myself),90)GlobalLT("NWArena","GLOBAL",4)~ THEN BEGIN 0 // from:
  SAY ~�� ���, ��������, �� ��� ��������? �� ���� ��� ���������. ������� ������. �������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,1)HPPercentGT(LastTalkedToBy(Myself),89)GlobalLT("NWArena","GLOBAL",4)~ THEN BEGIN 1 // from:
  SAY ~�� ������ ����� ������ ����������� �������. �� ���� ���������� � ���� ������������� ��������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,1)GlobalGT("NWArena","GLOBAL",3)~ THEN BEGIN 2 // from:
  SAY ~� ��� � ����! ����, ��� � ��� ���������! �� �������� ������ ��������! �������� ������ - � ������ �������, ��� �� ��������!~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,2)HPPercentGT(LastTalkedToBy(Myself),89)GlobalLT("NWArena","GLOBAL",4)~ THEN BEGIN 3 // from:
  SAY ~�� ��������� ������! ���, ������������ ����� ��������� ���� ������?~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,2)HPPercentGT(LastTalkedToBy(Myself),89)GlobalLT("NWArena","GLOBAL",4)~ THEN BEGIN 4 // from:
  SAY ~��, � � ������������� ��������, ��� �� ������ ��������� �� �����. ���� �� ����, �� ������ �������������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,2)GlobalGT("NWArena","GLOBAL",3)~ THEN BEGIN 5 // from:
  SAY ~� �� �������� ������ ����, ����� ���������� � ����������. � � ��� ����� �� ������ � �����.~
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,3)HPPercentLT(LastTalkedToBy(Myself),90)GlobalLT("NWArena","GLOBAL",4)~ THEN BEGIN 6 // from:
  SAY ~���������� �� ����. �� �� � �����, ����� �������. ��� ����� ���������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,3)HPPercentGT(LastTalkedToBy(Myself),89)GlobalLT("NWArena","GLOBAL",4)~ THEN BEGIN 7 // from:
  SAY ~� �� ��������� ��������� � ����. ������� ���� ������, ���� ��� ��� �� �����������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,3)GlobalGT("NWArena","GLOBAL",3)~ THEN BEGIN 8 // from:
  SAY ~�����, ��� ������ ��� ����. ����� ��� ����� � ��� ������� �������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #9 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,4)HPPercentLT(LastTalkedToBy(Myself),90)GlobalLT("NWArena","GLOBAL",4)~ THEN BEGIN 9 // from:
  SAY ~� ��� �� �� �� ���������, ���, ������ ����, ���� ������ �����! ������ ���������� �� ���� ����!~
  IF ~~ THEN EXIT
END

IF WEIGHT #10 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,4)HPPercentGT(LastTalkedToBy(Myself),89)GlobalLT("NWArena","GLOBAL",4)~ THEN BEGIN 10 // from:
  SAY ~��� ������ �����, ��� ���, �� ��������� ����� ����������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #11 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,4)GlobalGT("NWArena","GLOBAL",3)~ THEN BEGIN 11 // from:
  SAY ~�������� ����� ����� �������� �� ��������. ���������, ������� �� ��� ����� ��������� ��������?~
  IF ~~ THEN EXIT
END

