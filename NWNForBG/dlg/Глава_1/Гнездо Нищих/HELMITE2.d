// ������ ����� ���� ������ ���� ������   ������� ��������� ����� �������� �������� ������ �������� ������. �� � ����������� ����� ��� ������, �� ����� ���������� ���������.

BEGIN ~HELMITE2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(2,1)~ THEN BEGIN 0 // from:
  SAY ~�����������, � ����� ���������� � ���� ��������� ��� ������. �� ������� �������� ������������� � ��� ����������� �������?~
  IF ~~ THEN REPLY ~� ����� ��� �����������, �������.~ DO ~ForceSpell(LastTalkedToBy(Myself),CLERIC_BLESS)~ GOTO 1
  IF ~~ THEN REPLY ~��������������, �� � ����������, ��� �� ����� ����� ����.~ DO ~ForceSpell(LastTalkedToBy(Myself),CLERIC_BLESS)~ GOTO 1
  IF ~~ THEN REPLY ~�������� ����, �� � ��������. �������.~ GOTO 2
  IF ~~ THEN REPLY ~���� �� ���������� ���� ������ �������������.~ GOTO 2
  IF ~~ THEN REPLY ~�� ���������� �������� ������ �����?~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~��� ������� ��� ����. �� ������������ �������� ���, ��� � ����� �������� ������, ������ ���. � ������ �������, ��� � ���������������� ������� ��� ����? � ��������, �� ����� ���� ����� ������ ����.~
  IF ~  GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN REPLY ~�� ������, ��� ������� �����?~ GOTO 4
  IF ~  Global("BeggarsNestDone","GLOBAL",0)~ THEN REPLY ~�� ������, ��� ������� �����?~ GOTO 5
  IF ~  GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN REPLY ~���� ����� � ������������, ���� � ������� �� ����?~ GOTO 6
  IF ~  Global("BeggarsNestDone","GLOBAL",0)~ THEN REPLY ~���� ����� � ������������, ���� � ������� �� ����?~ GOTO 7
  IF ~~ THEN REPLY ~���� ������������� �������� �� �������� ����?~ GOTO 8
  IF ~~ THEN REPLY ~�� ���������� �������� ������ �����?~ GOTO 3
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 9
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY ~���, � ����, ��� �� ����������� ������ ����. ��� ���� ������?~
  IF ~~ THEN REPLY ~�� ������, ��� ������� �����?~ GOTO 4
  IF ~~ THEN REPLY ~���� ����� � ������������, ���� � ������� �� ����?~ GOTO 5
  IF ~~ THEN REPLY ~���� ������������� �������� �� �������� ����?~ GOTO 6
  IF ~~ THEN REPLY ~�� ���������� �������� ������ �����?~ GOTO 3
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 0.5
  SAY ~���� ���������� ������, ���� ��� ���������.~
  IF ~~ THEN DO ~StartStore("Helmite",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY ~��������� � �������, ��� ���� �� �������� ���������... ����-��. ����� ������� ��������. � �� ���� �������, ������ ��� ��� ���������. � �������� ����� ��� �� ����� ��������. ��� ������, � ����� ������ ������ �� ��������. �������, ���� ��� ��� ����� ���� ���������. �������� ���� ��� �� �����������.~
  IF ~  GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN REPLY ~���� ����� � ������������, ���� � ������� �� ����?~ GOTO 6
  IF ~  Global("BeggarsNestDone","GLOBAL",0)~ THEN REPLY ~���� ����� � ������������, ���� � ������� �� ����?~ GOTO 7
  IF ~~ THEN REPLY ~���� ������������� �������� �� �������� ����?~ GOTO 8
  IF ~~ THEN REPLY ~�� ���������� �������� ������ �����?~ GOTO 3
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 9
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY ~�����? � ���� ������� ������ ����, ��� �� �������������� ����� �� ����� ���������� ������� ���� ������� ������������. ������ ���� �� ������� ���������, ������� ���, ��� �� ����� ������, ���� ���� ����� ���������� ���.~
  IF ~  GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN REPLY ~���� ����� � ������������, ���� � ������� �� ����?~ GOTO 6
  IF ~  Global("BeggarsNestDone","GLOBAL",0)~ THEN REPLY ~���� ����� � ������������, ���� � ������� �� ����?~ GOTO 7
  IF ~~ THEN REPLY ~���� ������������� �������� �� �������� ����?~ GOTO 8
  IF ~~ THEN REPLY ~�� ���������� �������� ������ �����?~ GOTO 3
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 9
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY ~��� �, ��������� � �������, ������ ����� ������ ��� �� ��������, ��� ��� ����� �������� ����� ������. �������, � ��� ��� ����������� �������, ��� ������ ������� ����� ������. ���� ��� ��� �������� ���. �� ��� ������ �� � ������������.~
  IF ~  GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN REPLY ~�� ������, ��� ������� �����?~ GOTO 4
  IF ~  Global("BeggarsNestDone","GLOBAL",0)~ THEN REPLY ~�� ������, ��� ������� �����?~ GOTO 5
  IF ~~ THEN REPLY ~���� ������������� �������� �� �������� ����?~ GOTO 8
  IF ~~ THEN REPLY ~�� ���������� �������� ������ �����?~ GOTO 3
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 1.4
  SAY ~���������. ��� ������� �� ������. ��� �� ����� ���� ����� ��������� ������ ���� ���� �������������. � ����� ����� �� ������������� ����, ��� �������� ����, � ����� �������, ��� ��������. �� ��������� ��� ���� ���������.~
  IF ~~ THEN REPLY ~��� ������������ �������? ���� ����� �������� ���-������ � ������ �����.~ GOTO 10
  IF ~  GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN REPLY ~�� ������, ��� ������� �����?~ GOTO 4
  IF ~  Global("BeggarsNestDone","GLOBAL",0)~ THEN REPLY ~�� ������, ��� ������� �����?~ GOTO 5
  IF ~~ THEN REPLY ~���� ������������� �������� �� �������� ����?~ GOTO 8
  IF ~~ THEN REPLY ~�� ���������� �������� ������ �����?~ GOTO 3
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 1.5
  SAY ~���� ���, �� ������� ������. ������ ������������� ��������� ����, ���� ���� �� ����� ������������� ���������� ����. ������� �������� ������ ��������� �����, �� �� �� �������. ������� ������ ���� �����. �� ��� �������.~
  IF ~  GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN REPLY ~�� ������, ��� ������� �����?~ GOTO 4
  IF ~  Global("BeggarsNestDone","GLOBAL",0)~ THEN REPLY ~�� ������, ��� ������� �����?~ GOTO 5
  IF ~  GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN REPLY ~���� ����� � ������������, ���� � ������� �� ����?~ GOTO 6
  IF ~  Global("BeggarsNestDone","GLOBAL",0)~ THEN REPLY ~���� ����� � ������������, ���� � ������� �� ����?~ GOTO 7
  IF ~~ THEN REPLY ~�� ���������� �������� ������ �����?~ GOTO 3
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 1.6
  SAY ~��� ���������, �� ��� ����� ������ ����� ��� ��� �������. ����� ������������� ����� �������� ����� ��������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.1
  SAY ~�! � ��������� �������. ��������� ������������ ��������� � ������� ������� "���������� ����", �� � �� ���� ������� �� ����� ���������� ����������. ������ ����� ���� ����� �������� ����������� �������������. ������ ����� �� ��������, ��� ���� ����.~
  IF ~  GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN REPLY ~�� ������, ��� ������� �����?~ GOTO 4
  IF ~  Global("BeggarsNestDone","GLOBAL",0)~ THEN REPLY ~�� ������, ��� ������� �����?~ GOTO 5
  IF ~~ THEN REPLY ~���� ������������� �������� �� �������� ����?~ GOTO 8
  IF ~~ THEN REPLY ~�� ���������� �������� ������ �����?~ GOTO 3
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 9
END

// -------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(2,2)~ THEN BEGIN 11 // from:
  SAY ~����, �� ������ � ������� �������. �� ������� �������� ��� �������������?~
  IF ~~ THEN REPLY ~� ����� ��� �����������, �������.~ DO ~ForceSpell(LastTalkedToBy(Myself),CLERIC_BLESS)~ GOTO 1
  IF ~~ THEN REPLY ~��������������, �� � ����������, ��� �� ����� ����� ����.~ DO ~ForceSpell(LastTalkedToBy(Myself),CLERIC_BLESS)~ GOTO 1
  IF ~~ THEN REPLY ~�������� ����, �� � ��������. �������.~ GOTO 2
  IF ~~ THEN REPLY ~���� �� ���������� ���� ������ �������������.~ GOTO 2
  IF ~~ THEN REPLY ~�� ���������� �������� ������ �����?~ GOTO 3
END

