// ���������� ���� ������   ���� ��������� ����� �������� �������� ������ �������� ������. �� � ����������� ����� ��� ������, �� ����� ���������� ���������.

BEGIN ~HELMITE1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(2,1)Global("Robbed","LOCALS",0)~ THEN BEGIN 0 // from:
  SAY ~��, ���, ����� � ����������� ���� ����� �����, ������� ������ � ����� ���� �����? ��� ������� ���� �� ����, ���� �� �� �����.~
  IF ~~ THEN REPLY ~��, ����������, ����� ��� �������������� ������.~ DO ~ForceSpell(LastTalkedToBy(Myself),CLERIC_BLESS)~ GOTO 1
  IF ~~ THEN REPLY ~�� �������� �� �� ��� �� ���� ��������?~ GOTO 2
  IF ~~ THEN REPLY ~���, �������, � ��� ��� �� ������ ����������?~ GOTO 3
  IF ~~ THEN REPLY ~���, ���. � �����.~ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~�� ����� ������������� ��� ���� �������� ��������, ������ �������������� ������, ���������������� �������� �� ��� ������. ����� ��� ��� ��������� �� ����� �������.~
  IF ~~ THEN REPLY ~�� �������� �� �� ��� �� ���� ��������?~ GOTO 2
  IF ~~ THEN REPLY ~���, �������, � ��� ��� �� ������ ����������?~ GOTO 3
  IF ~~ THEN REPLY ~��� ������ ������ �� �����. � �����.~ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~��� ��� �������� �� ������?~
  IF ~~ THEN REPLY ~���������� ��� � �������, ����� ����������.~ GOTO 5
  IF ~  Global("PeninsulaDone","GLOBAL",0)~ THEN REPLY ~��� �� ������ � ����� � ������?~ GOTO 6
  IF ~  GlobalGT("PeninsulaDone","GLOBAL",0)~ THEN REPLY ~��� �� ������ � ����� � ������?~ GOTO 7
  IF ~~ THEN REPLY ~��� ��� �� �������� � ��� � ����� ������?~ GOTO 8
  IF ~~ THEN REPLY ~��� �� ������ � ������ ������?~ GOTO 9
  IF ~~ THEN REPLY ~��� ������ ������ �� �����. � �����.~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~���� ���������� ������, ���� ��� ���������.~
  IF ~~ THEN REPLY ~� ����� ������, ������ ���, ��� � ���� ����.~ DO ~StartStore("Helmite1",LastTalkedToBy(Myself))~ EXIT
  IF ~  Global("Robbed","LOCALS",0)~ THEN REPLY ~����� ����, � ���� ���� ��� ���� ������?~ GOTO 10
  IF ~  GlobalGT("Robbed","LOCALS",0)~ THEN REPLY ~����� ����, � ���� ���� ��� ���� ������?~ GOTO 11
  IF ~~ THEN REPLY ~� ���� �������� ��� �������.~ GOTO 2
  IF ~~ THEN REPLY ~��� ������ �� �����. � �����.~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~����� ��������. �� �������� � ���� ����� � ����������� ���������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY ~������-��������� ������ ������ �������, ��� �����. �� ��� ������� ������������� �� ������������� �� ��������. ��� ������� �����. �� ��� ������ � ��� �� ����� ������ � ������� ���� ����� ��������� ���� ����� ����, ��� ���� ������ �������� ��������.~
  IF ~~ THEN REPLY ~����� ������ �� �����������?~ GOTO 3
  IF ~  Global("PeninsulaDone","GLOBAL",0)~ THEN REPLY ~��� �� ������ � ����� � ������?~ GOTO 6
  IF ~  GlobalGT("PeninsulaDone","GLOBAL",0)~ THEN REPLY ~��� �� ������ � ����� � ������?~ GOTO 7
  IF ~~ THEN REPLY ~��� ��� �� �������� � ��� � ����� ������?~ GOTO 8
  IF ~~ THEN REPLY ~��� �� ������ � ������ ������?~ GOTO 9
  IF ~~ THEN REPLY ~��� ������ ������ �� �����. � �����.~ GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY ~� ���������� � ��� � ������������. �� � �� ������, ��� ��� ��� ��������� ���� �� ������ ������ ������������, �����������?~
  IF ~~ THEN REPLY ~��� ����� ������ �����.~ GOTO 3
  IF ~~ THEN REPLY ~���������� ��� � �������, ����� ����������.~ GOTO 5
  IF ~~ THEN REPLY ~��� ��� �� �������� � ��� � ����� ������?~ GOTO 8
  IF ~~ THEN REPLY ~��� �� ������ � ������ ������?~ GOTO 9
  IF ~~ THEN REPLY ~��� ������ ������ �� �����. � �����.~ GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 2.3
  SAY ~������ �� ��, ��� �� ���� ���� ����� ���� �� ������������ �������. ��������� ������ ��������� ��������� ����� �������������...~
  IF ~~ THEN REPLY ~��� ����� ������ �����.~ GOTO 3
  IF ~~ THEN REPLY ~���������� ��� � �������, ����� ����������.~ GOTO 5
  IF ~~ THEN REPLY ~��� ��� �� �������� � ��� � ����� ������?~ GOTO 8
  IF ~~ THEN REPLY ~��� �� ������ � ������ ������?~ GOTO 9
  IF ~~ THEN REPLY ~��� ������ ������ �� �����. � �����.~ GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 2.4
  SAY ~��... ������ ������ ������. ��, ��� ������, ��� �������� ��������, ���������������... ���, ���������� ������������ ������������ ���������. �� -��������. � � ������ ������ - ����. ����� ����� �����. ��� ��� �����, ��� �����, ������� � ����. ��� ������� � �������. ��.~
  IF ~~ THEN REPLY ~����� ������ �� �����������?~ GOTO 3
  IF ~~ THEN REPLY ~���������� ��� � �������, ����� ����������.~ GOTO 5
  IF ~  Global("PeninsulaDone","GLOBAL",0)~ THEN REPLY ~��� �� ������ � ����� � ������?~ GOTO 6
  IF ~  GlobalGT("PeninsulaDone","GLOBAL",0)~ THEN REPLY ~��� �� ������ � ����� � ������?~ GOTO 7
  IF ~~ THEN REPLY ~��� �� ������ � ������ ������?~ GOTO 9
  IF ~~ THEN REPLY ~��� ������ ������ �� �����. � �����.~ GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 2.5
  SAY ~��� ������� ���� �� ����������� �������, �� ��� ��� �������� ���������. ��, �������� �������� ��������� - �� � ������ �������� ��� �������... �� ������ ����, ���� ��������� ������������ ��������������.~
  IF ~~ THEN REPLY ~����� ������ �� �����������?~ GOTO 3
  IF ~~ THEN REPLY ~���������� ��� � �������, ����� ����������.~ GOTO 5
  IF ~  Global("PeninsulaDone","GLOBAL",0)~ THEN REPLY ~��� �� ������ � ����� � ������?~ GOTO 6
  IF ~  GlobalGT("PeninsulaDone","GLOBAL",0)~ THEN REPLY ~��� �� ������ � ����� � ������?~ GOTO 7
  IF ~~ THEN REPLY ~��� ��� �� �������� � ��� � ����� ������?~ GOTO 8
  IF ~~ THEN REPLY ~��� ������ ������ �� �����. � �����.~ GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 3.2
  SAY ~�� ��, ���� �������. � ������ �� �����������?~
  IF ~~ THEN REPLY ~�������, ������! ����� � ���� ��������!~ GOTO 12
  IF ~~ THEN REPLY ~�� ������. ����� �������� � ������ ��������.~ GOTO 2
  IF ~~ THEN REPLY ~������. � �����.~ GOTO 4
END

IF ~~ THEN BEGIN 11 // from: 3.3
  SAY ~���-��� ��� �����, ��� ���� ���� �������� �� �������� ������. � �� ��� ������� � ����, �� ��� � ���� ������ ��� �������.~
  IF ~~ THEN REPLY ~� ����� ������, ������ ���, ��� � ���� ����.~ DO ~StartStore("Helmite1",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~� ���� �������� ��� �������.~ GOTO 2
  IF ~~ THEN REPLY ~��� ������ �� �����. � �����.~ GOTO 4
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY ~������! � ����� �������! ��� ���� ��� ������ � ��� �� ������!~
  IF ~~ THEN REPLY ~� ����� ������. ���� ����� �� ����������, ���� ���� ���� ������ �����!~ GOTO 13
  IF ~~ THEN REPLY ~����� ��������, � ������-�� �� ���� ������� ����.~ GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY ~��! � ���� �� ��� �������� ��� �������. ������ �������� �� ����� ������, ������� � ���� ����? ������! ���, ��� ���, ��� � ���� ���� � �����. � ���� ��� ������� �� ����� ��� �����. � �������� ������������� ������, ������� ������ ��������� ��-�� ������ ������� ������� ��������, ��� ����� �����. ������ ����, � ���� ��������, ��� � �� ����... ���, �� �� ��� �������� �� �������� � ���� �����.~
  IF ~~ THEN DO ~SetGlobal("Robbed","LOCALS",1)IncrementGlobal("EvilNW1","GLOBAL",1)GiveGoldForce(166)~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.2
  SAY ~�� ����, ��� �� ��� ����������� ������, �� � � ���� �� ��������. �����.~
  IF ~~ THEN DO ~SetGlobal("Robbed","LOCALS",1)~ EXIT
END

// ----------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(2,2)Global("Robbed","LOCALS",0)~ THEN BEGIN 15 // from:
  SAY ~�, � ��� ����� ������� ����... �� ������ ��, ����� � ������� ��� ����� �����, ������� ������ � ����� ���� �����? ��� ������� ��� �� ����, ���� �� �� �����.~
  IF ~~ THEN REPLY ~��, ����������, ����� ��� �������������� ������.~ DO ~ForceSpell(LastTalkedToBy(Myself),CLERIC_BLESS)~ GOTO 1
  IF ~~ THEN REPLY ~�� �������� �� �� ��� �� ���� ��������?~ GOTO 2
  IF ~~ THEN REPLY ~���, �������, � ��� ��� �� ������ ����������?~ GOTO 3
  IF ~~ THEN REPLY ~���, ���. � �����.~ GOTO 4
END

// ----------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Robbed","LOCALS",1)~ THEN BEGIN 16 // from:
  SAY ~������ ���� �� ����! ����������, � ��� ��� ��������� � ������!~
  IF ~~ THEN EXIT
END

