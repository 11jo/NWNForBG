// ����� ������������ ������� ������ � ����� ��� �������   �����  �������   ��� ���� �� �������������� ��������� ������������. ���� �� �������� ��������, �� ��� ��� ����� �������� ��������� ������� �����������.

BEGIN ~DURGA~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  True()~ THEN BEGIN 0 // from:
  SAY ~��? ��� ���-������ �����? � "������� ������" ��� ����.~
  IF ~~ THEN REPLY ~��� �������� �� ������ ��������� ��������.~ GOTO 1
  IF ~~ THEN REPLY ~���������, ��� � ��� ���� �� �������.~ DO ~  StartStore("Durga",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~� ����� ���� ��������. ��� � ������ ��� �������?~
  IF ~~ THEN REPLY ~� ��� ����� ������ ����������.~ GOTO 3
  IF ~~ THEN REPLY ~��� �� ������ � ����?~ GOTO 4
  IF ~~ THEN REPLY ~�� ������� ������ ���������? �����-������ �������?~ GOTO 5
  IF ~~ THEN REPLY ~���������, ��� � ��� ���� �� �������.~ DO ~  StartStore("Durga",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY ~������ �������, ���� � ��� ���� ������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY ~���... �� ������, ��� ��� �����. � ���� ��� ������ ������, �� ������� �����.~
  IF ~  Global("ToMarrok","GLOBAL",1)~ THEN GOTO 6
  IF ~  Global("ToMarrok","GLOBAL",0)OR(3)Class(LastTalkedToBy,FIGHTER_ALL)Class(LastTalkedToBy,RANGER_ALL)Class(LastTalkedToBy,PALADIN)~ THEN GOTO 7
  IF ~  Global("ToMarrok","GLOBAL",0)!Class(LastTalkedToBy,FIGHTER_ALL)!Class(LastTalkedToBy,RANGER_ALL)!Class(LastTalkedToBy,PALADIN)PartyHasItem("Arena4")~ THEN GOTO 8
  IF ~  Global("ToMarrok","GLOBAL",0)!Class(LastTalkedToBy,FIGHTER_ALL)!Class(LastTalkedToBy,RANGER_ALL)!Class(LastTalkedToBy,PALADIN)!PartyHasItem("Arena4")~ THEN GOTO 9
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY ~��� ������� ��� �������, �� �����, � ��� ������ �������� � �����. ��� ������ ������ ������ ���������� ���� ������ �� ���� ���� ����, ��� ���� ����������.~
  IF ~~ THEN REPLY ~� ��� ����� ������ ����������.~ GOTO 3
  IF ~~ THEN REPLY ~�� ������� ������ ���������? �����-������ �������?~ GOTO 5
  IF ~~ THEN REPLY ~���������, ��� � ��� ���� �� �������.~ DO ~  StartStore("Durga",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY ~� ���� ��� ������� �� �������. � ������� ������� �� ���������� � ������� �����. �� ���������� ��� ���� ���.~
  IF ~~ THEN REPLY ~� ��� ����� ������ ����������.~ GOTO 3
  IF ~~ THEN REPLY ~��� �� ������ � ����?~ GOTO 4
  IF ~~ THEN REPLY ~���������, ��� � ��� ���� �� �������.~ DO ~  StartStore("Durga",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY ~� ��� ���� ��� ���� ������� � ��������. ��� ������ ������ ������ ������� �����. �� ��� ��������.~
  IF ~~ THEN REPLY ~�� ������� ������ ���������? �����-������ �������?~ GOTO 5
  IF ~~ THEN REPLY ~���������, ��� � ��� ���� �� �������.~ DO ~  StartStore("Durga",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 2
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY ~�����, �� ������� ������������ � ������. �����... �, ������ � ���. � ���� ���� ���-��� ��������� ��� ���. �������� �������. ��� ������� � ��������. ��� ������ ������ ������ ������� �����. �� � ��� �����������.~
  IF ~~ THEN DO ~SetGlobal("ToMarrok","GLOBAL",1)GiveItemCreate("Dupermit",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.3
  SAY ~��, � ����� ����, �� ���� �� �� ���, ��� ������ ����������� � �������� � ������? �������... ��� ������ ���������� ������?! ��������, � �� ����� ��� ���������. � ���� �������� �� �������� ������ �������. �������� ���� ������� � ��������. ������ ������ �������� ���.~
  IF ~~ THEN DO ~SetGlobal("ToMarrok","GLOBAL",1)GiveItemCreate("Dupermit",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.4
  SAY ~����� �� �� ������ ����� ���������. �� ����, ���, ��� ������������� ����� �������, ����� ��������� �� ��� ����������� �����������, �� �� �� � ��� �� ����������.~
 IF ~  CheckStatGT(LastTalkedToBy,15,STR)~ THEN REPLY ~������ � ��� ������� �������, �� ����� ������������ ��������. �����������.~ GOTO 10
 IF ~  CheckStatLT(LastTalkedToBy,16,STR)~ THEN REPLY ~������ � ��� ������� �������, �� ����� ������������ ��������. �����������.~ GOTO 11
  IF ~~ THEN REPLY ~���������, ��� � ��� ���� �� �������.~ DO ~  StartStore("Durga",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 2
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY ~��� �, � �� �����. ������ �� ����� ��������� ������������� ����� ���, ��� ���� �� �����, ��� � ��� ������. �� ������ ���� ������. �������� �������. ��� ������� � ��������. ��� ������ ������ ������ ������� �����. �� � ��� �����������.~
  IF ~~ THEN DO ~SetGlobal("ToMarrok","GLOBAL",1)GiveItemCreate("Dupermit",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.2
  SAY ~��� ����� ����, ������ ��� �������, ��� �� �� ������� ��� ������� ��������������� ������ �������������� ��������. ������ ��, ��� ������ ����� ���������� ��������� � ����� ��������.~
  IF ~~ THEN REPLY ~���������, ��� � ��� ���� �� �������.~ DO ~  StartStore("Durga",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 2
END

