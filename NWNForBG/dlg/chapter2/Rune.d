// ��������� ���, 

BEGIN ~RUNE~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~��� ������� ���������� ������� ����, � ��� �������� �������� ��������... ���������� �������, ������� ������� ��� ��� ����� �����. ��������� ������� ������������ ������� ���� �� ���������� ���� �����.~
  IF ~  !PartyHasItem("NWBOOK35")~ THEN GOTO 1
  IF ~  PartyHasItem("NWBOOK35")~ THEN GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~������ ��� �������� ���� ��� ���� �� ����� ������, ��� ��� ����������, � ����� ����� ��� ���������� ����������. ��� ������� ��������� ������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~��� ������ ������� � �������� ������������� �� ��������������� ��� ���� ��� ������� ��������� ����. ���� ���� ������� ��������� ������ �������. ���� �������� � �����������... � ��� ���� �� ������ ����. ������� ����� ���� � ������ ���� ���� ����� �� ���� ����... ��� ��� ���������� - ����������.~
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY ~�� ������ ������ ���� � ������ ����?~
  IF ~~ THEN REPLY ~������ ����, ������������ '���-�����'.~ GOTO 4
  IF ~~ THEN REPLY ~������ ����, ������������ '�����'.~ GOTO 5
  IF ~~ THEN REPLY ~������ ����, ������������ '���������'.~ GOTO 4
  IF ~~ THEN REPLY ~������ ����, ������������ '����'.~ GOTO 4
  IF ~~ THEN REPLY ~����.~ GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY ~�� ������ ������ ���� �� ������ ����?~
  IF ~~ THEN REPLY ~������ ����, ������������ '������'~ GOTO 6
  IF ~~ THEN REPLY ~������ ����, ������������ '�������'.~ GOTO 6
  IF ~~ THEN REPLY ~������ ����, ������������ '������'.~ GOTO 6
  IF ~~ THEN REPLY ~������ ����, ������������ '�����'.~ GOTO 6
  IF ~~ THEN REPLY ~����.~ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 3.2
  SAY ~�� ������ ������ ���� �� ������ ����?~
  IF ~~ THEN REPLY ~������ ����, ������������ '������'~ GOTO 6
  IF ~~ THEN REPLY ~������ ����, ������������ '�������'.~ GOTO 6
  IF ~~ THEN REPLY ~������ ����, ������������ '������'.~ GOTO 6
  IF ~~ THEN REPLY ~������ ����, ������������ '�����'.~ GOTO 7
  IF ~~ THEN REPLY ~����.~ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY ~�� ������ ������ ���� � ������� ����?~
  IF ~~ THEN REPLY ~������ ����, ������������ '��������������'.~ GOTO 9
  IF ~~ THEN REPLY ~������ ����, ������������ '������������'.~ GOTO 9
  IF ~~ THEN REPLY ~������ ����, ������������ '�������'.~ GOTO 9
  IF ~~ THEN REPLY ~������ ����, ������������ '����������'.~ GOTO 9
  IF ~~ THEN REPLY ~����.~ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 5.4
  SAY ~�� ������ ������ ���� � ������� ����?~
  IF ~~ THEN REPLY ~������ ����, ������������ '��������������'.~ GOTO 9
  IF ~~ THEN REPLY ~������ ����, ������������ '������������'.~ GOTO 9
  IF ~~ THEN REPLY ~������ ����, ������������ '�������'.~ GOTO 10
  IF ~~ THEN REPLY ~������ ����, ������������ '����������'.~ GOTO 9
  IF ~~ THEN REPLY ~����.~ GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY ~�� �������� �� ���, ��� ��� ����� �������� ������, �� ��������� ����������� ���, ���������� ��.~
  IF ~~ THEN DO ~DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1
  SAY ~����� �� ��������� ��������� ����, ��������� �������� ����. ��������...~
  IF ~~ THEN DO ~ReallyForceSpell(LastTalkedToBy(Myself),WIZARD_GREATER_MALISON)PlaySound("EFF_M02")SetGlobal("UndeadSpawn","NW2510",1)DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.2
  SAY ~����� �� ��������� ��������� ����, ������� ���������� �������� ������...~
  IF ~~ THEN DO ~SetGlobal("Portal2510","GLOBAL",1)PlaySound("EFF_M02")DestroySelf()~ EXIT
END

