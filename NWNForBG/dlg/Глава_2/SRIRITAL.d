// ������ - ������ � ��� ���� � ���� �����������

BEGIN ~SRIRITAL~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("SriritPortal","GLOBAL",0)PartyHasItem("RitDagg2")~ THEN BEGIN 0 // from:
  SAY ~��� ��������� �������������� �������� ��������� �������� ������. �� ������ ����������� ��������� � ������� ����� (��������� �� ��� �������� ������), � ������ ������ �������� �����.~
  IF ~~ THEN REPLY ~�������� ������� ������� �� ����� ������ � ������� ������ �� ������.~ GOTO 1
  IF ~~ THEN REPLY ~������� ��� ������� �����-������ ����� ��������.~ GOTO 2
  IF ~~ THEN REPLY ~�������� � ������ ��������� ����� �������� �� ������, ��������� �������������� ������.~ GOTO 3
  IF ~~ THEN REPLY ~�������� ������ � ������� ��� ���� � �����.~ GOTO 4
  IF ~~ THEN REPLY ~�������� ������, ������� ��� ���� � �����, ������� ��������� ������� �� �� �����.~ GOTO 4
  IF ~~ THEN REPLY ~���������� �������� �� ������ ���� ��������.~ GOTO 5
  IF ~~ THEN REPLY ~�������� ������.~ DO ~DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~��� ������ ������ ����� ����� ����� ������ �� ������, �� ����� ����� ��������� ������ �����, � ����� ����������� �������, � � ����� �������� �����.~
  IF ~~ DO ~DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~������, ������ �� ���������.~
   IF ~~ THEN REPLY ~�������� ������� ������� �� ����� ������ � ������� ������ �� ������.~ GOTO 1
  IF ~~ THEN REPLY ~�������� � ������ ��������� ����� �������� �� ������, ��������� �������������� ������.~ GOTO 3
  IF ~  NumInParty(1)~ THEN REPLY ~�������� ������ � ������� ��� ���� � �����.~ GOTO 4
  IF ~  !NumInParty(1)~ THEN REPLY ~�������� ������, ������� ��� ���� � �����, ������� ��������� ������� �� �� �����.~ GOTO 4
  IF ~~ THEN REPLY ~���������� �������� �� ������ ���� ��������.~ GOTO 5
  IF ~~ THEN REPLY ~�������� ������.~ DO ~DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~�� ������ ����� � �������� �� �� ������. ��� ������ ����� �������� �� ������, ���� ��������� ������� ����� � ����������, ��� ��� ���� ���� �������� �������� �����������.~
  IF ~~ THEN DO ~DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1 3.2
  SAY ~���� ������� ���������� ����� ���������� �������, �������, ����������, ������� � ��������.~
  IF ~~ THEN DO ~TakePartyItem("RitDagg2")SetGlobal("SriritPortal","GLOBAL",1)ClearAllActions()StartCutSceneMode()StartCutScene("ToSririt")~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.3
  SAY ~��������� ����� ���� �������� ���� ���, � � ����� ������ �����, ����� ����������� ����. ���������� �� ���������, ��� ����� ���� ����� ��� ���-�� ����.~
  IF ~~ THEN DO ~PlaySound("EFF_M89")DestroySelf()~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("SriritPortal","GLOBAL",0)~ THEN BEGIN 6 // from:
  SAY ~�������������� ������ �����. �������, ������ ������ ��������.~
  IF ~~ THEN DO ~DestroySelf()~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("SriritPortal","GLOBAL",0)!PartyHasItem("RitDagg2")~ THEN BEGIN 0 // from:
  SAY ~������ �� ������ �� ������� ����� �������.~
  IF ~~ THEN DO ~DestroySelf()~ EXIT
END
