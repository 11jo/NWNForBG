// �������� ������, ����� ����-������, ����� ������� ������ ���������� ���� ���� ��������� ���� ������� ����� ���� ����� ������������� � �������, ��� ��� ������������ � ���� ������. �� ���� ��������� ���.

BEGIN ~YESGAR~

IF ~  Global("Attack","LOCALS",1)~ THEN BEGIN 0 // from:
  SAY ~����� ���, ��� ���� �������� ���.~ [YESGA059]
  IF ~~ THEN REPLY ~������ �� ��� �� ����� ����?~ GOTO 1
  IF ~~ THEN REPLY ~� �� ��������� ������ ����! ����, �������!~ GOTO 2
  IF ~~ THEN REPLY ~������ �� �������, � ������� ���� � �����... ����� ����.~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~����� ��������� ���� ������ � ���� ���� ���������. ����� ���� ��������� �����?~
  IF ~~ THEN REPLY ~���������? � ��� � ��� �� �������?~ DO ~SetGlobal("ShaldrissLiar","MYAREA",1)~ GOTO 3
  IF ~~ THEN REPLY ~�� ��� ��������� �� ����� �������. ��� ����� ������!~ GOTO 4
  IF ~~ THEN REPLY ~�� ������ ����, �� ��� ����� ���� ���, ����� �������� �������.~ GOTO 5
  IF ~~ THEN REPLY ~�����, � ��� �� ���� ����.~ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~����� ��� �� ����, ��, ������ ��������� <RACE>!~
  IF ~~ THEN DO ~Enemy()Attack(LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY ~��������� �� ����� ��������������. ����� �� ������� ��, ��� ���� ������� � �������! �� ����!~
  IF ~~ THEN REPLY ~�� ������� ����� ���! ��������� �������� �������!~ GOTO 7
  IF ~~ THEN REPLY ~� ������. �������� ��� ������.~ GOTO 7
  IF ~~ THEN REPLY ~�� ������ ����, �� ��� ����� ���� ���, ����� �������� �������.~ GOTO 5
  IF ~~ THEN REPLY ~�����, � ��� �� ���� ����.~ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY ~����� �� ����� ���� ������� ������. ����� ��� �����.~
  IF ~~ THEN REPLY ~���� � ���� ��� �����, �� ��� ���� ����������. �������� � ������!~ GOTO 8
  IF ~~ THEN REPLY ~�� ���-�� ����� �� ����! ���������� ���, ��� � �������� ���� ������!~ GOTO 8
  IF ~~ THEN REPLY ~����� ��� ��� � ���� �����?~ GOTO 1
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY ~�� ���� ������ � ����������� <MALEFEMALE>! ����� �����, ��� ���. ������... (�����) �-�! ��� ������.~
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5
  SAY ~������ ���, ����� ������ �� ������� ����. � ��� ���� �� ������, ��� ������� ���������, ����� � ��� ��� ������.~
  IF ~~ THEN DO ~SetGlobal("SPRITE_IS_DEADYESGAR","GLOBAL",1)GiveItem("EarBand",LastTalkedToBy(Myself))GiveItem("YesgarK",LastTalkedToBy)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.1 3.2
  SAY ~����� ��������� ���������, ����� �������� � ��������� � ����-�����. ��� ������� �� ������� ����������� ������. ��� ��������� ����� �������� ��.~
  IF ~~ THEN REPLY ~�� �����, �� �� �� �������, ��� � ������ �� ��� ��� ���� ������.~ GOTO 9
  IF ~~ THEN REPLY ~���������. ��� ����� ��� ������, ��� � ���� ����. ����� ������!~ GOTO 4
  IF ~~ THEN REPLY ~�� ������ ����, �� ��� ����� ���� ���, ����� �������� �������.~ GOTO 5
  IF ~~ THEN REPLY ~�����, � ��� �� ���� ����.~ GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 4.1 4.2
  SAY ~�� ������ ������! ����� �����. �� ����� ������ ���� ������. � ��� ����. ��� � ������ ���� ���������. ����� ����� ������ ����?~
  IF ~~ THEN REPLY ~�� ������ ����, �� ��� ����� ���� ���, ����� �������� �������.~ GOTO 10
  IF ~~ THEN REPLY ~�����, � ��� �� ���� ����.~ GOTO 11
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY ~����� ������ ������! ��������� ������, ����� � ������� � ���! ��� ��� �������, �� �����! ��� ����� ������!~
  IF ~  OR(2)CheckStatGT(LastTalkedToBy(Myself),13,INT)CheckStatGT(LastTalkedToBy(Myself),13,WIS)~ THEN REPLY ~����� ��� ������ ����������, ��, ������ ������!~ GOTO 12
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,INT)CheckStatLT(LastTalkedToBy(Myself),14,WIS)~ THEN REPLY ~����� ��� ������ ����������, ��, ������ ������!~ GOTO 15
  IF ~~ THEN REPLY ~�����. � ���� ����.~ GOTO 13
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY ~�� ���� ������ � ����������� <MALEFEMALE>! ����� �����, ��� ���. ������... (�����) �-�! ��� ������.~
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 11 // from: 8.2
  SAY ~����� ��� �� ����, ��, ������ ��������� <RACE>!~
  IF ~~ THEN DO ~GiveItem("YesgarK",LastTalkedToBy)Enemy()Attack(LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.1
  SAY ~�����, �� ��� ������! ��� ������� ���������. ��� ����� ������, ��������� �� ���, ��� ����� �����. ��. ��� ����� ������� �������.~
  IF ~~ THEN REPLY ~���������. ��� ����� ��� ������, ��� � ���� ����. ����� ������!~ GOTO 4
  IF ~~ THEN REPLY ~�� ������ ����, �� ��� ����� ���� ���, ����� �������� �������.~ GOTO 5
  IF ~~ THEN REPLY ~�����, � ��� �� ���� ����.~ GOTO 2
END

IF ~~ THEN BEGIN 13 // from: 9.3
  SAY ~������. ����� ������ �������� ������. ����� ����� ������ ����?~
  IF ~~ THEN REPLY ~���������. ��� ����� ��� ������, ��� � ���� ����. ����� ������!~ GOTO 4
  IF ~~ THEN REPLY ~�� ������ ����, �� ��� ����� ���� ���, ����� �������� �������.~ GOTO 5
  IF ~~ THEN REPLY ~�����, � ��� �� ���� ����.~ GOTO 2
END

IF ~~ THEN BEGIN 14 // from: 10
  SAY ~������ ���, ����� ������ �� ������� ����. � ��� ���� �� ������, ��� ������� ���������, ����� � ��� ��� ������.~
  IF ~~ THEN DO ~SetGlobal("SPRITE_IS_DEADYESGAR","GLOBAL",1)GiveItem("YesgarK",LastTalkedToBy)GiveItem("EarBand",LastTalkedToBy)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 9.2
  SAY ~� �������� ������! ������ ������� ������!~
  IF ~~ THEN REPLY ~���������. ��� ����� ��� ������, ��� � ���� ����. ����� ������!~ GOTO 4
  IF ~~ THEN REPLY ~�� ������ ����, �� ��� ����� ���� ���, ����� �������� �������.~ GOTO 5
  IF ~~ THEN REPLY ~�����, � ��� �� ���� ����.~ GOTO 2
END
