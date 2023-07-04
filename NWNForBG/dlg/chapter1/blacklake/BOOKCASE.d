// creator  : weidu (version 23700)
// argument : BOOKCASE.DLG
// game     : .
// source   : ./override/BOOKCASE.DLG
// dialog   : ./dialog.tlk
// dialogF  : ./dialogf.tlk

BEGIN ~BOOKCASE~

IF ~  Global("DoorOpened","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY ~�� ��������� ��� ��� �� ������� ����, ��, ��� �� �� ��������� �������� ��� � �����, � ��� ������ �� ����������. �� ���� ��������� ����� ���������� �����-�� ����� ��� ��������� ����������.~
  IF ~  OR(2)GlobalGT("TelmaSecret","GLOBAL",0)GlobalGT("PankinSecret","GLOBAL",0)~ THEN REPLY ~���������� ����� "������".~GOTO 1
  IF ~~ THEN REPLY ~���������� ����� "�����".~ GOTO 2
  IF ~~ THEN REPLY ~���������� ����� "�����".~ GOTO 2
  IF ~~ THEN REPLY ~���������� ����� "������� ".~ GOTO 2
  IF ~~ THEN REPLY ~���������� ����� "�������".~ GOTO 2
  IF ~  HaveSpell(WIZARD_KNOCK)~ THEN REPLY ~��������� ���������� "����".~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY ~���� ������������ � �������, ����� ���� ���������� ������ � ���������.~
  IF ~~ THEN DO ~SetGlobal("DoorOpened","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.4 0.3 0.2 0.1
  SAY ~������ �� ����������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.5
  SAY ~������ �� ����������.~ [EFF_M56]
  IF ~~ THEN DO ~RemoveSpell(WIZARD_KNOCK)~ EXIT
END
