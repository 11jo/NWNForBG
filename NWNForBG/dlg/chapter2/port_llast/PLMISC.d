// ����-����� ��������

BEGIN ~PLMISC~

IF ~  NumberOfTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY ~�������� �������! ������, �� ������ ��������.~
  IF ~~ THEN REPLY ~�� �����. �� ����������, ��� ����� ��������� ���������?~ GOTO 1
  IF ~~ THEN REPLY ~��, � ��� �������� �� ��������� �� ���� ������.~ GOTO 2
  IF ~~ THEN REPLY ~� ���� ��� �� ��������� ������� ������� � ����.~ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY ~�������! ����� ����� ������ ������ � ������. ��� ���� ��������� ������ �����, � ������� � ���� �����, ������ ���� ���.~
  IF ~~ THEN REPLY ~�������. �� ������ ��� ����, ��� �� �������� ��������� �� ���� ������.~ GOTO 2
  IF ~~ THEN REPLY ~�������. ��� ����.~ EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY ~��� ��� ��������. ���������, ���������.~
  IF ~~ THEN DO ~StartStore("PLMisc",LastTalkedToBy(Myself))~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY ~��, �� ���������! ����� ������ ��������� �� ��� ������?~
  IF ~~ THEN REPLY ~��, ������� ���������, ��� � ��� ����.~ GOTO 2
  IF ~~ THEN REPLY ~���, �� ������.~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from:
  SAY ~������ �� �������� ���������, ����� ��� ���-���� �����������!~
  IF ~~ THEN EXIT
END
