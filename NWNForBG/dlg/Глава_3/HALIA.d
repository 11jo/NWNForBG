// ����-������: ��� �����  �����  ����� ��� �������-������ �����, ��� ������� ��������, �� ���-�� ������������, ��� � ��� ����� �����.

BEGIN ~HALIA~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~�������, ��� ��� ����� ��������. ����� ��������� ����� ������ �����. � � ������ �� ���� � ���, ��� ����������� � ������! ����!~
  IF ~  PartyHasItem("EckLett")~ THEN REPLY ~� ���� ������� �� ������ ����.~ GOTO 1
  IF ~~ THEN REPLY ~��� ���� ���?~ GOTO 2
  IF ~~ THEN REPLY ~���� ������� ������� �� ���� ������. ���� ����� ������ ��� ����������� ������������.~ GOTO 3
  IF ~~ THEN REPLY ~���� � ���� ���-�� ������?~ GOTO 4
  IF ~~ THEN REPLY ~��� ����� ����.~ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~������� �� �����? ����� ���������? ����... ������ �� ��� �������, ��� �����. � ������ ����������� �� ���� �����! ��� � ���� ���������� �� ��� �������! ������, ��� ��������, ��� ����� ������ ���� ��������������. ��� ������ 400 �������?~
  IF ~~ THEN REPLY ~�������, ��� ����� ������.~ GOTO 6
  IF ~~ THEN REPLY ~������ - ��� ������. ������� ����, ���� ������.~ GOTO 6
  IF ~  CheckStatGT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~��� �������, ��� �� ����� �� ���������, � �� ���� ���� ���������.~ GOTO 7
  IF ~  CheckStatLT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY ~��� �������, ��� �� ����� �� ���������, � �� ���� ���� ���������.~ GOTO 8
  IF ~~ THEN REPLY ~���� �� ����� ��������, �� �������� �������� � �������!~ GOTO 9
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~���� ������, ������ � ������� ������, ������������ � ���� ������. ��� ��� �������� �� ������ �����, ���� ��� ����� ������ ������� �� ����������.~
  IF ~  PartyHasItem("EckLett")~ THEN REPLY ~� ���� ������� �� ������ ����.~ GOTO 1
  IF ~~ THEN REPLY ~���� ������� ������� �� ���� ������. ���� ����� ������ ��� ����������� ������������.~ GOTO 3
  IF ~~ THEN REPLY ~���� � ���� ���-�� ������?~ GOTO 4
  IF ~~ THEN REPLY ~��� ����� ����.~ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~�� ��������, � ���� �� ���� ��������. � ���� �����, ��������� �����������, �� ����, ��� ��������� �����, � �� ������ ������ �� ���� �����. ���� ������ �� ������� ����� � ���� �����������.~
  IF ~  PartyHasItem("EckLett")~ THEN REPLY ~� ���� ������� �� ������ ����.~ GOTO 1
  IF ~~ THEN REPLY ~��� ���� ���?~ GOTO 2
  IF ~~ THEN REPLY ~���� � ���� ���-�� ������?~ GOTO 4
  IF ~~ THEN REPLY ~��� ����� ����.~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~�� ������ ����������, ����� ��� ����� �������� ������ ���� ����� ������� ����. � �����, ��� � ���� ���� ���������� �� �������, ��, ���� �� �� ������, � ���� �� ����, ��� � ����� ������������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY ~��� �, �����. ���������� ������, �� ���� ������ ������� ��������� �������...~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1
  SAY ~������ ��� ������ � ���� ��������������. �� ������������ �����. ��� ���� ������� � �� ����� �� ���� ������ ��� ��� ����. �� �� �������!~
  IF ~~ THEN DO ~SetGlobal("EckelJob","GLOBAL",2)TakePartyItem("EckLett")DestroyItem("EckLett")GiveGoldForce(400)AddexperienceParty(30000)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY ~��� �, �����, ��� �� ���� � ������, ���� ������� ���� ��� ���-����. ��������� ���� �� � ������ ������� �� �����������. ���, ������ ���� ������. ������������ � ����, ����� ���� ��������� �����������. �� �����, ��� ��� ��� �����-������ ����������~
  IF ~~ THEN DO ~SetGlobal("EckelJob","GLOBAL",2)TakePartyItem("EckLett")DestroyItem("EckLett")GiveItemCreate("scrl07",LastTalkedToBy,1,1,0)GiveGoldForce(400)AddexperienceParty(10000)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.4
  SAY ~�� ���� ���������. � �����, ��� ��� ������� ������ �� ��, ����� ������ �������� �������. 400 ������� � �� ������, �����?~
  IF ~~ THEN DO ~SetGlobal("EckelJob","GLOBAL",2)TakePartyItem("EckLett")DestroyItem("EckLett")GiveGoldForce(400)AddexperienceParty(30000)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.5
  SAY ~�� ����� ���� �������������! � �� ������ ���� ���������� �����, ������ ��. � ���� �������� �����, � �� ���, ����� ������ �����������! ���� �� �� �������� ���� �����, � �� �������� ���� �������� ����������, ��� ���� �� ����� ��������! �� � ����� ������� �����. ��� ��������������, ������� ���� �������. �� ���� ����� ����������, ���� � �� ������� ����-������ ������, � ��� �� ��� ����� �� ��������!~
  IF ~~ THEN DO ~SetGlobal("EckelJob","GLOBAL",2)TakePartyItem("EckLett")DestroyItem("EckLett")GiveGoldForce(400)AddexperienceParty(10000)~ EXIT
END

// ----------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 10 // from:
  SAY ~������ �� ����� ������ ������� ����� ���������, ��� � ����������� �� ����.~
  IF ~  PartyHasItem("EckLett")~ THEN REPLY ~� ���� ������� �� ������ ����.~ GOTO 1
  IF ~~ THEN REPLY ~��� ���� ���?~ GOTO 2
  IF ~~ THEN REPLY ~���� ������� ������� �� ���� ������. ���� ����� ������ ��� ����������� ������������.~ GOTO 3
  IF ~~ THEN REPLY ~���� � ���� ���-�� ������?~ GOTO 4
  IF ~~ THEN REPLY ~��� ����� ����.~ GOTO 5
END

