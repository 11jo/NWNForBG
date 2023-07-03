// ������ ����� ����� ����� �������   � ��������� ����� ��������� ����������� �������� � ������� ���������.

BEGIN ~TOWERGRD~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("TowerDoorOpened","MYAREA",0)~ THEN BEGIN 0 // from:
  SAY ~�� �� ������ ������� ����, �� ���� �� �� ������� ����������, ���������. ����������, ��������.~
  IF ~~ THEN REPLY ~���� ����� ���� ����?~ GOTO 1
  IF ~~ THEN REPLY ~��� �� ���������� ��� ���������?~ GOTO 2
  IF ~~ THEN REPLY ~� ������� ����, ���� ������.~ GOTO 3
  IF ~  PartyHasItem("PermitTo")~ THEN REPLY ~� ���� ���� �������. � - ����� �� ����������.~ GOTO 4
  IF ~~ THEN REPLY ~������, � �����.~ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~���� ���� - ������������ ���� �� ������, ��� ��������� ����� �������, ������������� �������� �������, <SIRMAAM>.~
  IF ~~ THEN REPLY ~�������� �������?~ GOTO 6
  IF ~~ THEN REPLY ~������ �� ���� �����-�� ������ �������?~ GOTO 7
  IF ~~ THEN REPLY ~��� �� ���������� ��� ���������?~ GOTO 2
  IF ~  PartyHasItem("PermitTo")~ THEN REPLY ~� ���� ���� �������. � - ����� �� ����������.~ GOTO 4
  IF ~~ THEN REPLY ~������, � �����.~ GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~��� ����� ���������� ���������� ������ �������� �������, ����������� �� �������.~
  IF ~~ THEN REPLY ~�������� �������?~ GOTO 6
  IF ~~ THEN REPLY ~��� ��������� ����� ����?~ GOTO 8
  IF ~~ THEN REPLY ~���� ����� ���� ����?~ GOTO 1
  IF ~~ THEN REPLY ~� ������� ����, ���� ������.~ GOTO 3
  IF ~  PartyHasItem("PermitTo")~ THEN REPLY ~� ���� ���� �������. � - ����� �� ����������.~ GOTO 4
  IF ~~ THEN REPLY ~������, � �����.~ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~�� �������. ���� ���� �� �������� ���� ���... � ��� � ����������... �� ����� ����� ������� �������� ����������. ����� ��� ���������� ���, ����� �������. �� ������, �������, ����������... ���� ������.~
  IF ~~ THEN REPLY ~���� ����� ���� ����?~ GOTO 1
  IF ~~ THEN REPLY ~��� �� ���������� ��� ���������?~ GOTO 2
  IF ~  PartyHasItem("PermitTo")~ THEN REPLY ~� ���� ���� �������. � - ����� �� ����������.~ GOTO 4
  IF ~~ THEN REPLY ~������, � �����.~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~���?! � ��-�� ����� ���������...~
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY ~����� ����� ������, ���������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1
  SAY ~��, ����������� �����������. �������, ��� ��������� ��������, �� ���� � ���, ��� ������ ��� �����. �� ����� ����� ��� ������ ��.~
  IF ~~ THEN REPLY ~������ �� ���� �����-�� ������ �������?~ GOTO 7
  IF ~~ THEN REPLY ~��� �� ���������� ��� ���������?~ GOTO 2
  IF ~  PartyHasItem("PermitTo")~ THEN REPLY ~� ���� ���� �������. � - ����� �� ����������.~ GOTO 4
  IF ~~ THEN REPLY ~������, � �����.~ GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 1.2
  SAY ~���� ��. ���������� �������� ���� ����������� ������. ���� �� �������� �� �����, �� ��������� �������, ������ ���� �������� ����������, ����� ����������� ����... ������� ���, � �����. ���� ������ ��� �� �������. �� ������� ����, ��� ��� �������.~
  IF ~~ THEN REPLY ~��� �� ���������� ��� ���������?~ GOTO 2
  IF ~~ THEN REPLY ~� ������� ����, ���� ������.~ GOTO 3
  IF ~  PartyHasItem("PermitTo")~ THEN REPLY ~� ���� ���� �������. � - ����� �� ����������.~ GOTO 4
  IF ~~ THEN REPLY ~������, � �����.~ GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY ~(��������) ��� �������� ������ ������������ � ������ ������ ���������, � ����� ������������ ����������.~
  IF ~~ THEN REPLY ~��� ����� �������� �������?~ GOTO 6
  IF ~~ THEN REPLY ~���� ����� ���� ����?~ GOTO 1
  IF ~~ THEN REPLY ~� ������� ����, ���� ������.~ GOTO 3
  IF ~  PartyHasItem("PermitTo")~ THEN REPLY ~� ���� ���� �������. � - ����� �� ����������.~ GOTO 4
  IF ~~ THEN REPLY ~������, � �����.~ GOTO 5
END

IF ~~ THEN BEGIN 9 // from: 4.1
  SAY ~�� ��� �... ����� ����� ������. ��� ����������, ��� ��� ��������� �� ������. ����� ������, <SIRMAAM>, ������� ���������. �� ��������� ���� ������ �������� ������� �������� ����� �������� ���������, � ������ �� ���� �� ����� ����. �� ��� �������. ������ ������.~
  IF ~~ THEN DO ~SetGlobal("TowerDoorOpened","MYAREA",1)Unlock("Door18")OpenDoor("Door18")~ EXIT
END

// ----------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("TowerDoorOpened","MYAREA",0)IsGabber(Player1)~ THEN BEGIN 10 // from:
  SAY ~�� ������ ������� ����, �����.~
  IF ~~ THEN EXIT
END

// ----------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("TowerDoorOpened","MYAREA",0)!IsGabber(Player1)~ THEN BEGIN 10 // from:
  SAY ~��, ������ ����, ������ � ������ �� ����������, ��? �� ������ ������� ����.~
  IF ~~ THEN EXIT
END

