// creator  : weidu (version 23700)
// argument : POTSELC2.DLG
// game     : .
// source   : ./override/POTSELC2.DLG
// dialog   : ./dialog.tlk
// dialogF  : ./dialogf.tlk

BEGIN ~POTSELC2~

IF ~  NumberOfTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~����� ���������� � ��� �����! � ����� ������ ����������. ������ ��������� �� ��� ������?~
  IF ~~ THEN REPLY ~��, �������. ��������, ��� � ��� ����.~ GOTO 2
  IF ~~ THEN REPLY ~�, ���-���, ���-������ � ������ ���.~ GOTO 3
END

IF ~  NumTimesTalkedToGT(0)~ THEN BEGIN 1 // from:
  SAY ~�� ���������! ������ ��������� �� ��� ��������?~
  IF ~~ THEN REPLY ~��, �������.~ GOTO 2
  IF ~~ THEN REPLY ~���, ���-������ � ������ ���.~ GOTO 3
END

IF ~~ THEN BEGIN 2 // from:
  SAY ~������, �� ���������� ��������, <SIRMAAM>!~
  IF ~~ THEN DO ~StartStore("PotSelC2",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY ~�������, �� ��� ��������!~
  IF ~~ THEN EXIT
END
