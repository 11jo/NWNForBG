// creator  : weidu (version 23700)
// argument : GLOVE.DLG
// game     : .
// source   : ./override/GLOVE.DLG
// dialog   : ./dialog.tlk
// dialogF  : ./dialogf.tlk

BEGIN ~GLOVE~

IF ~  ReactionGT(LastTalkedToBy(Myself),HOSTILE_UPPER)
~ THEN BEGIN 0 // from:
  SAY ~������, ������. ����� ����������, ���������� ���� ��� ����. ������ ������������ �� ���������� �������, �����? ������� ������ ��������, ��� ��� �� � ��� ������� �������������. ��� �, ��� ���� ������?~
  IF ~~ THEN REPLY ~��������, ��� �� ������ ����������.~ DO ~StartStore("Glove",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY ~������.~ EXIT
END

IF ~  ReactionLT(LastTalkedToBy(Myself),NEUTRAL_LOWER)
~ THEN BEGIN 1 // from:
  SAY ~������. �� ���, ������, ��� ������������� �� �����. ������, �� ���� ��������� ����� � ���� ������ ��� ��� ������ ��������. ������ ������ - �� ����������� � �����. �� ������ - ����� ����������. ��� �, ��� ���� ������?~
  IF ~~ THEN REPLY ~��������, ��� �� ������ ����������.~DO ~StartStore("Glove",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY ~������.~ EXIT
END
