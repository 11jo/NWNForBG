// ���������� �������� ��������� �������   ���-�� ������������ ���, ��� ���� ������� �������� ����. �������� ������� �� �������� � ���� ����� �������. ��-��, �������.

// DisplayStringHead(Myself,000000) ��! ��, ��! ���� ����... ���... �-���-��-��-����-����. ��, ����-�-��-���������!

// DisplayStringHead(Myself,000000) ����! ����� �� ������� �������...

BEGIN ~GROMMIN2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~��! ��, ��! ���� ����... ���... �-���-��-��-����-����. ��, ����-�-��-���������! �� ��� ����?! ������ �������, ��� ������ �����!~
  IF ~~ THEN REPLY ~���, ����������, ��� ������?~ GOTO 1
  IF ~~ THEN REPLY ~�� �� �������� ���� ��� ���������, �����?~ GOTO 2
  IF ~~ THEN REPLY ~� �� ���?~ GOTO 3
  IF ~~ THEN REPLY ~�, ����������, �������� �����.~ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~������� ����� �����... �����... ��������. �� ������, �����, ����� �������. �� ����� �����������, ��-�, ������ ������. �� ���?~
  IF ~CheckStatGT(LastTalkedToBy(Myself),14,INT)~ THEN REPLY ~�� ����� �������� �����. ���� �� ����� �� ����, ���� �� ����� �� ����� ������, ������?~ GOTO 5
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY ~�... � ����� � ��������. ���� � ��� ����������.~ GOTO 6
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~�... � ����� � ��������. ���� � ��� ����������.~ GOTO 7
  IF ~~ THEN REPLY ~�� �� �������� ���� ��� ���������, �����?~ GOTO 2
  IF ~~ THEN REPLY ~� �� ���?~ GOTO 3
  IF ~~ THEN REPLY ~�, ����������, �������� �����.~ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~������ �������, �� ������ ��������� � ���, ���� �������� �� ����������. ������� �� ����������. ������� ������� ������ ������ �������. �� ���?~
  IF ~CheckStatGT(LastTalkedToBy(Myself),14,INT)~ THEN REPLY ~�� ����� �������� �����. ���� �� ����� �� ����, ���� �� ����� �� ����� ������, ������?~ GOTO 5
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY ~�... � ����� � ��������. ���� � ��� ����������.~ GOTO 6
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~�... � ����� � ��������. ���� � ��� ����������.~ GOTO 7
  IF ~~ THEN REPLY ~���, ����������, ��� ������?~ GOTO 1
  IF ~~ THEN REPLY ~� �� ���?~ GOTO 3
  IF ~~ THEN REPLY ~�, ����������, �������� �����.~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~��� �������. ������� �������� ���������� �������, �� ������� ������ �����. ������� ������ ������. ������� ������... �� ����� ���� ������ ������. �� ���?~
  IF ~CheckStatGT(LastTalkedToBy(Myself),14,INT)~ THEN REPLY ~�� ����� �������� �����. ���� �� ����� �� ����, ���� �� ����� �� ����� ������, ������?~ GOTO 5
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY ~�... � ����� � ��������. ���� � ��� ����������.~ GOTO 6
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~�... � ����� � ��������. ���� � ��� ����������.~ GOTO 7
  IF ~~ THEN REPLY ~���, ����������, ��� ������?~ GOTO 1
  IF ~~ THEN REPLY ~�� �� �������� ���� ��� ���������, �����?~ GOTO 2
  IF ~~ THEN REPLY ~�, ����������, �������� �����.~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~��-��! ������� ���������� ����, ��� �����!!~
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY ~����... ���, ������� ������ ���. �� ��� ������, ����� ���. ������� ������� �����, �� ��������� ���, ������?~
  IF ~~ THEN DO ~SetGlobal("OpenDoor","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2
  SAY ~��, �����. ������� ������� ���� �����. ���, ��������� � ���.~
  IF ~~ THEN DO ~SetGlobal("OpenDoor","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.3
  SAY ~������ ������� �����, ��� �� ����? �� ��� ������ �� ����. ������� ������� �� ����� ������ ������.~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),14,INT)~ THEN REPLY ~��� ������ �� ������, �� ���� � �����?~ ~��� ������ �� ������, �� ���� � ������?~ GOTO 5
  IF ~~ THEN REPLY ~� ���� ���� �������.~ GOTO 8
  IF ~~ THEN REPLY ~������ ������ � ���� �������. �� ���� �� �����, ����?~ GOTO 9
  IF ~~ THEN REPLY ~�� �������� ������� ����, � ��� �������� ����. ������ ����� �������.~ GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY ~������� ������ �� �����, �� ������� �������.~
  IF ~~ THEN REPLY ~��� � ���� ����� ������ �������?~ GOTO 10
  IF ~~ THEN REPLY ~��� ��������� �� ���� ������?~ GOTO 11
  IF ~~ THEN REPLY ~����� ��� ���� ������?~ GOTO 12
  IF ~~ THEN REPLY ~������ ������ � ���� �������. �� ���� �� �����, ����?~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 7.2
  SAY ~�����. ������� ����� ��� �������. ������� ����� ������� ������.~
  IF ~~ THEN DO ~SetGlobal("OpenDoor","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY ~*������, ��������, �����. ������� ��� ������� �� ���, ��� ��� ������� �� �����. ������ �� ����� ��������.~
  IF ~~ THEN REPLY ~��� ��������� �� ���� ������?~ GOTO 11
  IF ~~ THEN REPLY ~����� ��� ���� ������?~ GOTO 12
  IF ~~ THEN REPLY ~������ ������ � ���� �������. �� ���� �� �����, ����?~ GOTO 9
END

IF ~~ THEN BEGIN 11 // from: 8.2
  SAY ~����... ������� �� ����. �������� ������ ���� ������. ������� ����, � ������� ���� �����������... ���� ��� ��������, ������� �� �������.~
  IF ~~ THEN REPLY ~������ ���� ������ ������ �����������?~ GOTO 13
  IF ~~ THEN REPLY ~��� � ���� ����� ������ �������?~ GOTO 10
  IF ~~ THEN REPLY ~����� ��� ���� ������?~ GOTO 12
  IF ~~ THEN REPLY ~������ ������ � ���� �������. �� ���� �� �����, ����?~ GOTO 9
END

IF ~~ THEN BEGIN 12 // from: 8.3
  SAY ~� ������� ����� ��������. ������ �� �� ���������, ��� ���� �����. ������ ����� �������� � ����, ��� ������ �������. ��������� ���� ����� �������. ��� ��� ��������� ����, ������ � ��� ������ � ��� ����. ������� �� �� �����.~
  IF ~~ THEN REPLY ~��� � ���� ����� ������ �������?~ GOTO 10
  IF ~~ THEN REPLY ~��� ��������� �� ���� ������?~ GOTO 11
  IF ~~ THEN REPLY ~������ ������ � ���� �������. �� ���� �� �����, ����?~ GOTO 9
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY ~������ ������ �������� �� ����-������, ����� ��� ������. ������ ������ ����� ����, ����� ��� ������. ������� ��������, ������ �� ����� ��������� �� ��������.~
  IF ~~ THEN REPLY ~��� � ���� ����� ������ �������?~ GOTO 10
  IF ~~ THEN REPLY ~����� ��� ���� ������?~ GOTO 12
  IF ~~ THEN REPLY ~������ ������ � ���� �������. �� ���� �� �����, ����?~ GOTO 9
END

// ---------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 14 // from:
  SAY ~�� ����� �����? ��� ���� ������ ����� �� ��������?~
  IF ~~ THEN REPLY ~� ���� ���� � ���� ��������� ��������.~ GOTO 8
  IF ~  Dead("Meldanen")~ THEN REPLY ~��� ������ ��������, ���� ������� �����, ��� ���� ������ �����.~ GOTO 15
  IF ~~ THEN REPLY ~������. �������� ���� � ������... �... �������������.~ GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 14.2
  SAY ~��. ���� ������� ������ ��� ��������. � ������ ��� �����.~
  IF ~~ THEN DO ~AddexperienceParty(10000)EscapeAreaDestroy(60)~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.3
  SAY ~�����. ������� �������� ������ �����, ������� ������. ���� �������� ����� ��������� ��.~
  IF ~~ THEN EXIT
END

