// creator  : weidu (version 24600)
// argument : NWMESS.DLG
// game     : .
// source   : ./DATA/NWGEN2.BIF
// dialog   : .\dialog.tlk
// dialogF  : .\dialogf.tlk

BEGIN ~NWMESS~

IF ~  NumberOfTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY ~������������! � ������ �� ������������ �� �������. � ���� ������ ������������ ���� � ��� ���� �� ������������� �������������. ���� ������ � ���� ����� ��������� ���� � ������� ����� ����� ������ ��������� ������ ������������. ����� ���� �� ������� ������?~
  IF ~~ THEN REPLY ~��� ��� �� ���������. ������� ����-������ �������~ EXIT
  IF ~~ THEN REPLY ~��, �������, � �������� ������. ��� ��������� ���� �����?~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~��� �� ������ �� �������. ���� �� �������� ������, � ������������ ��� � ���� ������ � �������� ������������.~
  IF ~~ THEN REPLY ~�� ������~ GOTO 2
  IF ~~ THEN REPLY ~��, � �����.~ ~��, � ������~ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 4.0 1.0
  SAY ~��� �, � ���� ����� ��� �����.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 4.1 1.1
  SAY ~����� �������������, ������ �� ��������� � �������� ������������. ���� ������ ��� ��� �������� ��������.~
  IF ~~ THEN DO ~SetGlobal("Messenger_of_Neverwinter","GLOBAL",2)
ClearAllActions()
StartCutSceneMode()
StartCutScene("ToNWN")
~ EXIT
END

IF ~  !NumberOfTimesTalkedTo(0)
~ THEN BEGIN 4 // from:
  SAY ~�� ���������. ������ �� ��� ��� �� ��� ��������?~
  IF ~~ THEN REPLY ~�� ������~ GOTO 2
  IF ~~ THEN REPLY ~��, � �����.~ ~��, � ������~ GOTO 3
END
