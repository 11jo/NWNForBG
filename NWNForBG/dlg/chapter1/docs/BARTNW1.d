// creator  : weidu (version 23700)
// argument : BARTNW1.DLG
// game     : .
// source   : ./override/BARTNW1.DLG
// dialog   : ./dialog.tlk
// dialogF  : ./dialogf.tlk

BEGIN ~BARTNW1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY ~� ���� ��� ���-������ ������?~
  IF ~~ THEN REPLY ~������ ��� ������ �� �����.~EXIT
  IF ~~ THEN REPLY ~�� �� ��������, ��� � ��� ���� � �������?~ DO ~StartStore("Inn1101",LastTalkedToBy(Myself))
~ EXIT
END
